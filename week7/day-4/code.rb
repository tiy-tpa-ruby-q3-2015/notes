# class Person
#   def initialize(new_name, new_age)
#     @name = new_name
#     @age  = new_age
#   end
#
#   def name
#     @name
#   end
#
#   def name=(new_name)
#     @name = new_name
#   end
#
#   def age
#     @age
#   end
#
#   def age=(new_age)
#     @age = new_age
#   end
# end

# class Person
#   attr_accessor :name, :age, :favorite_color
#
#   def initialize(name, age, favorite_color)
#     self.name = name
#     self.age  = age
#     self.favorite_color = favorite_color
#   end
# end

class Person < Struct.new(:name, :age, :favorite_color)
  def greet
    "Hello #{name} who is #{age} old and likes #{favorite_color}"
  end
end

class Dog < Struct.new(:name, :breed, :favorite_toy)
end

puppy = Dog.new("Riley", "Dachsund", "my shoe")
p puppy.name
p puppy.breed
p puppy.favorite_toy

g = Person.new("Gavin", 21, "blue")
puts g.greet
