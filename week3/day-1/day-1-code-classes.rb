require_relative 'lib/github_profile'
require_relative 'lib/address'

module TheIronYard
  module GithubInfo
    attr_accessor :github_profile,
                  :github_budget


    def budget
      github_profile.cost
    end

    def initialize
      super
    end
  end

  module PersonalInfo
    attr_accessor :name,
                  :phone_number,
                  :slack_account,
                  :address
    def initialize
      super
    end
  end

  # We could make a base class *above* Employee and Student
  # instead of having modules

  # class Person
  #   attr_accessor :name,
  #                 :phone_number,
  #                 :slack_account,
  #                 :github_profile,
  #                 :github_budget,
  #                 :address
  #
  #   def budget
  #     github_profile.cost
  #   end
  # end



  # Example of using a library class/module

  # class MyClass < LibraryClass
  #   def some_method
  #     "string"
  #   end
  # end
  #
  # class MyClass
  #   include LibraryModule
  #
  #   def some_method
  #     "string"
  #   end
  # end

  class Employee
    include PersonalInfo
    include GithubInfo

    # Get the power of Ruby's comparable for <, >, >=, <=, ==, etc.
    include Comparable

    attr_accessor :date_of_hire,
                  :bonus

    def initialize
      super
      self.bonus = 0
    end

    def <=>(other)
      self.salary <=> other.salary
    end

    def salary
      # Why is bonus nil here? <= TODO
      234_567 + bonus
    end

    def title
      if github_profile.plan == "Free"
        "Freeloading #{position} since #{date_of_hire}"
      else
        "#{position} since #{date_of_hire}"
      end
    end

    def promote!
      self.bonus = 1_000
    end
  end

  class RubyInstructor < Employee
    def position
      "Super Ruby Instructor"
    end

    def salary
      super + 100_000
    end
  end

  class FrontEndInstructor < Employee
    def position
      "Front End Instructor"
    end

    def salary
      super + 99_999
    end
  end

  class CampusDirector < Employee
    def position
      "Campus Director"
    end

    def salary
      super + 200_000
    end
  end

  class SeniorRubyInstructor < RubyInstructor
    def salary
      2 * super
    end
  end

  class Student
    include PersonalInfo
    include GithubInfo

    attr_accessor :cohort,
                  :graduated
  end
end

home = Address.new
home.zip = 33701
home.street = "123 Main Street"

profile = GithubProfile.new
profile.plan = "Paid"
profile.authentication_token = "FFFFAAA"
profile.signup_date = "2006-01-01"
profile.account = "jenna"

jenna = TheIronYard::Student.new
jenna.name = "Jenna"
jenna.github_profile = profile
jenna.address = home
jenna.cohort = "Aug 2015"
puts "Jenna's budget is #{jenna.budget}"
puts "Jenna's city is #{jenna.address.city}"
puts "Jenna's cohort is #{jenna.cohort}"

p jenna.class
p jenna.class.ancestors

gavin = TheIronYard::SeniorRubyInstructor.new
gavin.name = "Gavin"
gavin.date_of_hire = "2015-07-04"

jason = TheIronYard::FrontEndInstructor.new
jason.name = "Jason"
jason.date_of_hire = "2015-03-04"

toni = TheIronYard::CampusDirector.new
toni.name = "Toni"

puts "Gavin's Salary is #{gavin.salary}"
gavin.promote!
puts "Gavin's Salary is #{gavin.salary}"

profile = GithubProfile.new
profile.plan = "Paid"
profile.authentication_token = "FFFFAAA"
profile.signup_date = "2006-01-01"
profile.account = "gstark"

tiy_tampa = Address.new
tiy_tampa.street = "260 1st Ave South"
tiy_tampa.zip = 33701

gavin.github_profile = profile
gavin.address = tiy_tampa

p gavin.github_profile.plan
p gavin.title
p gavin.budget
p gavin.address.city

# Demonstrate *Comparable*
if gavin < jason
  puts "Gavin is less than Jason"
else
  puts "Gavin is more than Jason"
end


# Class diagram
#
#              Person
#            /        \
#           /          \
#       Employee        Student
#     /  |   \
#  RI   FEI  CD
#   |
#  SRI
