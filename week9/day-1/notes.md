- Pow
- Multitennancy
- Procfile
  - https://devcenter.heroku.com/articles/ruby-default-web-server
  - Heroku app server [puma](https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#adding-puma-to-your-application)
- Github branches and pull request
  - [Creating branches](https://help.github.com/articles/creating-and-deleting-branches-within-your-repository/)
    - `git checkout -b BRANCH_NAME`
    - Make commits
    - `git push -u origin BRANCH_NAME`
    - `git push`
  - [Using Pull Requests](https://help.github.com/articles/using-pull-requests/)
- Git [flow](http://nvie.com/posts/a-successful-git-branching-model/)
- Git [flow tool](https://github.com/nvie/gitflow)


# MultiTennancy

What if we wanted to only list
```ruby

class Customer < ActiveRecord::Base
  has_many :widgets
end

class Widget < AB
  belongs_to :customer
end

host = request.host

customer = Customer.find_by(customer_host_name: host)

@widgets = customer.widgets
```





















