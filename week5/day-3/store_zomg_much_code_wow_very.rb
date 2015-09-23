require "sqlite3"

DATABASE = SQLite3::Database.new(File.dirname(__FILE__) + "/store.sqlite3")

class User
  attr_accessor :id, :first_name, :last_name, :email

  def initialize(id, first_name, last_name, email)
    self.id         = id
    self.first_name = first_name
    self.last_name  = last_name
    self.email      = email
  end

  def self.sql(statement, *values)
    DATABASE.execute(statement, values).
             map { |row| User.new(row[0], row[1], row[2], row[3]) }.
             first
  end

  def self.find(id)
    sql("select * from users where users.id = ?", id)
  end

  def self.find_by_first_name_and_last_name(first_name, last_name)
    sql("select * from users where users.first_name = ? AND users.last_name = ?", first_name, last_name)
  end

  def address
    Address.find_by_user_id(id)
  end

  def orders
    Order.find_all_by_user_id(id)
  end
end

class Address
  attr_accessor :id, :user_id, :street, :city, :state, :zip

  def initialize(id, user_id, street, city, state, zip)
    self.id = id
    self.user_id = user_id
    self.street = street
    self.city = city
    self.state = state
    self.zip = zip
  end

  def self.sql(statement, *values)
    DATABASE.execute(statement, values).
             map { |row| Address.new(row[0], row[1], row[2], row[3], row[4], row[5]) }.
             first
  end

  def self.find(address_id)
    sql("select * from addresses where addresses.id = ?", address_id)
  end

  def self.find_by_user_id(user_id)
    sql("select * from addresses where addresses.user_id = ?", user_id)
  end
end

class Item
  attr_accessor :id, :title, :category, :description, :price
end

class Order
  attr_accessor :id, :user_id, :item_id, :quantity, :created_at

  def initialize(id, user_id, item_id, quantity, created_at)
    self.id = id
    self.user_id = user_id
    self.item_id = item_id
    self.quantity = quantity
    self.created_at = created_at
  end

  def self.sql(statement, *values)
    DATABASE.execute(statement, values).
             map { |row| Order.new(row[0], row[1], row[2], row[3], row[4]) }.
             first
  end

  def self.all_sql(statement, *values)
    DATABASE.execute(statement, values).
             map { |row| Order.new(row[0], row[1], row[2], row[3], row[4]) }
  end

  def self.find_by_user_id(user_id)
    sql("select * from orders where orders.user_id = ?", user_id)
  end

  def self.find_all_by_user_id(user_id)
    all_sql("select * from orders where orders.user_id = ?", user_id)
  end
end

user = User.find(37)
address = user.address
puts "#{user.first_name} #{user.last_name} lives in #{address.state} and #{user.orders.size} orders"

# other_user = User.find_by_first_name_and_last_name("Virginie", "Mitchell")
# p other_user
# p other_user.address

# class Person
#   DATABASE = SQLite3::Database.new(File.dirname(__FILE__) + "/people.db")
#
#   attr_accessor :name, :title
#
#   def initialize(name, title)
#     self.name = name
#     self.title = title
#   end
#
#   def greeting
#     "#{name} is a #{title}"
#   end
#
#   def self.sql(statement, value)
#     DATABASE.execute(statement, value).
#              map { |row| Person.new(row[0], row[1]) }.
#              first
#   end
#
#   # This is a class method, we do not need an instance of the class (e.g. Person.new)
#   # to call this method. We just call it as    Person.find(....)
#   def self.find_by_partial_name(search_name)
#     sql("select name, title from people where name like ? order by name", "%#{search_name}%")
#   end
#
#   def self.find_by_exact_name(search_name)
#     sql("select name, title from people where name = ? order by name", search_name)
#   end
# end
#
# print "What name are you searching for from the database? "
# input_name = gets.chomp
#
# person = Person.find_by_exact_name(input_name)
# if person
#   puts "We found a person named #{person.name} and they are a #{person.title}"
# else
#   puts "Nope!"
# end
