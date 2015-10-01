Heroku
  - brew install Heroku
  - heroku login
  - Add 'pg' gem to production environment
  - bundle install
  - ruby -v
  - Add whatever version of ruby as 'ruby 2.2.3' (example) to top of Gemfile
  - heroku create
  - git push heroku master

Using posgresql locally instead of sqlite:
  - brew install postgresql
  - brew install pgcli
  - rails new name --database=postgresql
  - createdb name_development
  - Then all is the same

Review
 - Migrations
 - symbols everywhere
 - Models vs Controllers
 - Ruby blocks
