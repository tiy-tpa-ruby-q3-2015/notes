require "sqlite3"
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: File.dirname(__FILE__) + "/store.sqlite3"
)

class User < ActiveRecord::Base
  ZOMG_EMAIL_REGEXP = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  has_many :addresses
  has_many :orders

  before_destroy :one_last_thing

  validates :email, presence: true, format: ZOMG_EMAIL_REGEXP
  validates :age,   presence: true

  def grand_total_order_amount
    orders.to_a.sum(&:total)
  end

  def one_last_thing
    puts "I have one more thing to do before I am destroyed"
  end
end

class Address < ActiveRecord::Base
  belongs_to :user
end

class Item < ActiveRecord::Base
  belongs_to :order
end

class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :item

  def total
    quantity * item.price
  end
end

user = User.find_by_last_name("Little")
addresses = user.addresses
orders  = user.orders
puts "#{user.first_name} #{user.last_name} and has ordered #{orders.size} things and has spent $#{user.grand_total_order_amount}"

orders.each do |order|
  item = order.item
  puts "Order ##{order.id} #{item.title} for $#{item.price} x #{order.quantity} for a total of $#{order.total}"
end

User.all.each do |user|
  user.addresses.each do |address|
    puts "#{address.street} #{address.city} #{address.state} #{address.zip} -- #{user.first_name} #{user.last_name}"
  end
end

puts "-"*80

Address.all.each do |address|
  puts "#{address.street} #{address.city} #{address.state} #{address.zip} -- #{address.user.first_name} #{address.user.last_name}"
end

# Long form
user = User.new
user.first_name = "Jason"
user.last_name = "Perry"
user.email = "jason-theironyard.com@"
user.age = 21
p user

# Is valid?
if user.valid?
  puts "All is ok"
else
  puts "All is definitely NOT ok"
  p user.errors
end

# Save to database
user.save
p user

# Supply attributes at initialization
user_with_attributes_at_initialization = User.new(first_name: "Jason", last_name: "Perry", email: "jason@theironyard.com", age: 21)
# But is not yet in the db (see that id is 'nil')
p user_with_attributes_at_initialization

# Supply attributes at initialization
user_with_create = User.create(first_name: "Jason", last_name: "Perry", email: "jason@theironyard.com", age: 21)
# User is in the DB as long as it is valid
p user_with_create

# Get rid of Jason (I mean the record from the DB, not the human, he is pretty cool)
puts "Getting rid of the user with id #{user_with_create.id} that is #{user_with_create.inspect}"
user_with_create.destroy

# Supply attributes at initialization
invalid_user = User.create(first_name: "Jason", last_name: "Perry", age: 21)
# User is in the DB as long as it is valid
p invalid_user.valid?
p invalid_user
