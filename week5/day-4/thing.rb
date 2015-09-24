require "sqlite3"
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: File.dirname(__FILE__) + "/store.sqlite3"
)

class Thing < ActiveRecord::Base
end

thing = Thing.create(name: "Gavin", age:21)
p thing.created_at
p thing.updated_at

sleep 3
thing.name = "Jason"
thing.save

p thing.created_at
p thing.updated_at

p Thing.count
