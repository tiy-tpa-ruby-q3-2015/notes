

class Person
  attr_accessor :name, :age, :favorite_color, :hometown
  def initialize(name, age)
    @name = name
    @age = age
  end


  # This is the long way of writing the accessors

  # def name=(new_name)
  #   @name = new_name
  # end

  # def name
  #   @name
  # end

  # def age=(new_age)
  #   @age = new_age
  # end

  # def age
  #   @age
  # end

  def greet
    puts "Hello #{@name} that is #{@age} years old"
  end
end

person1 = Person.new("Gavin", 21)
person1.greet
person1.age=   22
person1.name       = "Jason"
person1.greet
person1.favorite_color = "blue"
puts person1.age
puts person1.favorite_color
