require "sqlite3"

db = SQLite3::Database.new(File.dirname(__FILE__) + "/people.db")

class Person
  DATABASE = SQLite3::Database.new(File.dirname(__FILE__) + "/people.db")

  attr_accessor :name, :title

  def initialize(name, title)
    self.name = name
    self.title = title
  end

  def greeting
    "#{name} is a #{title}"
  end

  def self.sql(statement, value)
    DATABASE.execute(statement, value).
             map { |row| Person.new(row[0], row[1]) }.
             first
  end

  # This is a class method, we do not need an instance of the class (e.g. Person.new)
  # to call this method. We just call it as    Person.find(....)
  def self.find_by_partial_name(search_name)
    sql("select name, title from people where name like ? order by name", "%#{search_name}%")
  end

  def self.find_by_exact_name(search_name)
    sql("select name, title from people where name = ? order by name", search_name)
  end
end

print "What name are you searching for from the database? "
input_name = gets.chomp

person = Person.find_by_exact_name(input_name)
if person
  puts "We found a person named #{person.name} and they are a #{person.title}"
else
  puts "Nope!"
end
