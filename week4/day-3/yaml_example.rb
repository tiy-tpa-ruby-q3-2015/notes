require 'yaml'

class Employee
  attr_accessor :name, :title
  # @name
  # @title

  def initialize(name, title)
    self.name = name
    self.title = title

    @awesomeness_level = 9000
  end
end

#puts "My working directory"
#p Dir.pwd

#puts "Current ruby script"
#p __FILE__

YAML_FILE = File.dirname(__FILE__) + "/data.yml"

# puts "Data file in the same directory as my ruby script"
# p YAML_FILE

employee = Employee.new("Toni", "Campus Director")

array = [1, 42, 19, 25, 100, {"Gavin"=>"Instructor",
                              "Car"=>"Tesla",
                              "Job"=>"The Iron Yard"},
         "String", "Other String", employee]

# Freeze dry my object
File.write(YAML_FILE, array.to_yaml)

# Thaw it out
other_array = YAML::load(File.read(YAML_FILE))

p other_array
