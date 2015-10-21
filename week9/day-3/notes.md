- Add to topic.rb: has_many :interests, dependent: :destroy
  - Destroys all the interests for the given topic.
  - Avoids having _orphaned_ interests when deleting the topics
- Rails.logger.info "Message Here"
  - Adds custom logging events to help with debugging
- Rails logging in Heroku
 - heroku logs --tail
 - papertrail -- install this as an "add on"
- Exceptions
 - rescue exceptions to handle them (maybe reroute the user) instead of allowing the application to fail
 - Customize 500.html and 404.html to your brand standard
 - [Want more on this subject?](http://exceptionalruby.com/)
 - ActiveRecord::RecordNotFound
 - rescue_from
- Sidekiq / batch jobs on Heroku
 - https://github.com/mperham/sidekiq
 - https://github.com/mperham/sidekiq/wiki/Deployment
 - bundle exec sidekiq -c 2 -v
 - http://bryanrite.com/heroku-puma-redis-sidekiq-and-connection-limits/
- Rails 5
 - http://www.sitepoint.com/whats-new-rails-5/

