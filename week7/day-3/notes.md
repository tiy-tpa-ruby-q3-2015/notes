# Devise

#### Note: these instructions are slightly more complex since we are adding devise to an app that already has a user model and a sessions controller/resource. From new we wouldn't have to delete any columns or any code from routes or controllers.
- `rails generate devise:install`
- `rails generate devise user`
  - Add devise method to `User`
    ```ruby
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable,
           :omniauthable, omniauth_providers: [:github]
    ```
  - Change login/logout links
     - `new_user_session_path`
     - `destroy_user_session_path`
  - Add configuration to `development.rb`
    - `config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }`
  - Change migration to drop the existing email and password, and password_confirmation
- `rake db:migrate`
- `rails generate devise:views`

# Omniauth (OAuth)
- Add `omniauth` and `omniauth-github`
- Add migration for omniauth:
  - `rails g migration AddOmniauthToUsers name provider:index uid:index nickname access_token`
- user update
  - `:omniauthable, :omniauth_providers: [:github]`
- Gemfile: `dotenv-rails`
- add `.env` to `.gitignore`
- Create an app on github in your settings under developer apps
- Update .env file with:
  - `GITHUB_APP_ID=.......`
  - `GITHUB_APP_SECRET=.....`
- Add this line inside the `config/initializers/devise.rb`:
  - `config.omniauth :github, ENV['GITHUB_APP_ID'], ENV['GITHUB_APP_SECRET'], scope: 'user,public_repo'`
- Change line in `routes.rb` to:
  - `devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }`
- Add this to `user.rb`:
  ```ruby
      def self.from_omniauth(auth)
        user = where(provider: auth['provider'], uid: auth['uid']).first_or_create

        user.name         = auth.info.name
        user.email        = auth.info.email
        user.nickname     = auth.info.nickname
        user.access_token = auth.credentials.token
        user.password     = Devise.friendly_token[0,20]
        user.save!

        return user
      end
  ```
- Add this controller `omniauth_callbacks_controller.rb`
  ```ruby
  class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def github
      @user = User.from_omniauth(request.env["omniauth.auth"])

      if @user.persisted?
        sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
        set_flash_message(:notice, :success, :kind => "Github") if is_navigational_format?
      else
        redirect_to new_user_registration_url
      end
    end
  end
  ```
- Add font awesome if you want hip social media icons.

# Resources
- Blog post about [OAuth in Plain English](http://blog.varonis.com/introduction-to-oauth/)
- [Devise](https://github.com/plataformatec/devise#getting-started)
- [Omniauth with Devise](https://github.com/plataformatec/devise/wiki/OmniAuth:-Overview)
