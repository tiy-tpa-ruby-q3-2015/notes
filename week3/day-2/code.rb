class Person
  attr_accessor :name, :phone_number, :age

  def initialize(name,  age)
    self.name = name
    self.age = age
  end

  #def phone_number=(number)
  #  @phone_number = GooglePhoneValidator.fix_up_area_code(number)
  #end

  def greet
    puts "Hello #{name}"
  end
end

class Database
  attr_accessor :people

  def initialize
    self.people = []
  end

  def search(name)
    people.each do |person|
      #puts "Going to compare the person #{person.inspect}"
      #puts "if #{person.name.inspect} == #{name.inspect}"
      if person.name == name
        person.age = 100
        puts ""
        puts "Person:"
        puts "    name: #{person.name}"
        puts "     age: #{person.age}"
        puts ""
        return
      end
    end

    puts ""
    puts "Nobody home for #{name}"
    puts ""
    # ** look at the first person in the array
    # ** if that person's name is the name
    #   we are looking for then tell the
    #   user found, and return
    # ** otherwise move on the the next person
    #   in the array and try again
    # ** If we run off the end of the array
    #      tell the user the person wasn't found
  end

  def menu
    loop do
      p @people
      puts "What do you want A/D/S/Q"
      choice = gets.chomp
      if choice == "A"
        puts "What is the name?"
        name = gets.chomp
        if name.empty?
          next
        end

        puts "What is their age"
        age = gets.chomp.to_i
        if age < 18
          next
        end

        @people << Person.new(name, age)
      end

      if choice == "S"
        # search
        print "Who do you want to search for? : "
        name = gets.chomp
        search(name)
      end

      if choice == "D"
        # delete"
      end

      if choice == "Q"
        break
      end
    end

  end
end

database = Database.new
database.menu

def looping_example
  # open a file
  # get some resource
  puts "Outside loop"
  loop do
    print "What do you want? A/S/D/Q?: "
    choice = gets.chomp
    if choice == "Q"
      break
    end
  end
  puts "Last statement in outside loop"

  # more code here
  puts "more code here, important code!"
end
looping_example
puts "Super important code"
