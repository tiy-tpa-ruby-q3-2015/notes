def greet(name)
  puts "Hello #{name}"
end

employee = "Gavin"
puts "Before greeting"
greet(employee)
greet("Toni")
greet(42)
puts "After greeting"

def double(number)
  number * 2
end

def double_greet(name)
  puts "Hello #{double(name)}"
end

num = 12
x = double(42 + num)
y = x
x = double("Gavin")
puts y
puts x

double_greet("Toni")

def multiply(number, quantity)
  if number < 7
    return number * 7
  end

  number * quantity
end

puts multiply(2,9)

def multiply_lots_of_numbers_given_an_array(array_of_numbers)
  total = 1
  array_of_numbers.each do |number|
    total *= number
  end

  return total
end

def multiply_lots_of_numbers(name, *numbers)
  puts "Name is #{name}"
  puts "Numbers is #{numbers}"
  total = name.to_s
  numbers.each do |number|
    total *= number
  end

  return total
end

array = [1,2,3,4]
puts multiply_lots_of_numbers_given_an_array(array)
puts multiply_lots_of_numbers_given_an_array([4,5,6])
puts multiply_lots_of_numbers("Gavin", 1,2,3,4)
puts multiply_lots_of_numbers("Toni", 4,5,6)
puts multiply_lots_of_numbers("Jason", 1,2,3)

# name     # variable
# @name    # instance
# @@name   # XXXX class
# $name    # XXXX global

class Dog
  def initialize(bark)
    @kind_of_bark = bark
  end

  def greet(name)
    puts "#{@kind_of_bark}! #{name}"
  end

  def lick
    puts "liiiiiiiiick"
  end

  def set_bark(bark)
    @kind_of_bark = bark
  end

  def bark
    return @kind_of_bark
  end
end

riley = Dog.new("Woof")
riley.greet("Gavin")
puts "Riley barks like #{riley.bark}"
riley.set_bark("wooooooooof")
riley.greet("Toni")
puts "Riley barks like #{riley.bark}"

jackson = Dog.new("weeeak")
jackson.greet("Anthony")

riley.greet("Jason")

roxy = Dog.new("mmmmmmmmm")
roxy.greet("food")

tink = Dog.new("Woof")
tink.greet("Mark")
