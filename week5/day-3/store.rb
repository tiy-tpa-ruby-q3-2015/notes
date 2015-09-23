require "sqlite3"
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: File.dirname(__FILE__) + "/store.sqlite3"
)

class User < ActiveRecord::Base
  has_many :addresses
  has_many :orders

  def grand_total_order_amount
    orders.to_a.sum(&:total)
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
