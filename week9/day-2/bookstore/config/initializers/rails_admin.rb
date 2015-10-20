RailsAdmin.config do |config|

  # Authenticate with devise
  config.authenticate_with do
    warden.authenticate! scope: :user

    # Only allow in our admin users
    unless current_user.admin?
      redirect_to main_app.root_path
    end
  end
  config.current_user_method(&:current_user)

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
end
