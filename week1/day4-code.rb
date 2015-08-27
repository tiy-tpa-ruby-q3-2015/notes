require 'pry'
# # local variables
# # parameters / argument
# # instance variables
# # constant
#
# SMILE = ":)"
# local = "local variable"
#
# class Car
#   GIFT = "OIL!"
#
#   def initialize(brand, year)
#     @brand = brand
#     @year  = year
#   end
#
#   def greet
#     puts "I am a car of name #{@brand} and I'm a #{@year} - I love #{GIFT} #{SMILE}"
#   end
#
#   def drive
#     puts "zoom!"
#   end
# end
#
# class Person
#   GIFT = "🎁"
#
#   def initialize(name, hometown, age)
#     @name = name
#     @hometown = hometown
#     @age = age
#     @greet = "#{@name} from #{@hometown} who is #{@age} old"
#     @number = rand(100)
#   end
#
#   def what_do_i_know_about_myself
#     print "#{@name}'s instance variables are: "
#     p instance_variables
#   end
#
#   def graduate!
#     @has_certificate = true
#   end
#
#   def greet(prefix)
#     puts "#{prefix} #{@greet} who's favorite number is #{@number} #{GIFT} #{SMILE}"
#     if @has_certificate
#       puts " --- Horray #{@name} graudated: #{GIFT}"
#     end
#   end
# end
#
# honda = Car.new("Fit", 25)
# honda.greet
# p honda.instance_variables
#
# honda = Person.new("Fit", "Tokyo", 10)
# honda.greet("Hello")
# p honda.instance_variables
#
# hometown = "St Pete"
#
# age = 25
# gavin = Person.new("Gavin", hometown, age + 5)
# gavin.greet("Hello")
# gavin.what_do_i_know_about_myself
# gavin.graduate!
# gavin.what_do_i_know_about_myself
# gavin.greet("Hello")
#
# jason = Person.new("Jason", hometown, age)
# jason.greet("Howdy")
# jason.what_do_i_know_about_myself
#
# puts "The smile is #{SMILE}"
# puts "The gift is #{Person::GIFT}"
# puts "The gift is #{Car::GIFT}"

# 5.times do
#   puts "What is your name"
#   name = gets
#   if name.nil?
#     puts "Thats all folks!"
#     exit
#   end
#   name = name.chomp
#   puts "Hello #{name}"
# end

our_data = File.new("name.txt")
4.times do
  name = our_data.gets
  puts "Hello there #{name}"
end

file_for_reading_lines = File.new("name.txt")
name_array = file_for_reading_lines.readlines
p name_array

def write_some_names(file)
  file.puts "Toni"
  file.puts "Chad"
end

name_text = File.new("name.txt", "a")
write_some_names(name_text)

name_text2 = File.new("name2.txt", "w")
write_some_names(name_text2)


def compute_total(num1, num2)
  binding.pry
  num1 - num2
end
