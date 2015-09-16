require 'json'

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

# puts "My working directory"
# p Dir.pwd

# puts "Current ruby script"
# p __FILE__

#  CONSTANT  = method       KEYWORD   + STRING
#  CONSTANT  = <---- STRING --------> + STRING
#  CONSTANT  = <------------- STRING -------------->
   JSON_FILE = File.dirname(__FILE__) + "/data.json"
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#  Puts my data.json in the same directory as *THIS*
#  ruby script

# puts "Data file in the same directory as my ruby script"
# p JSON_FILE

employee = Employee.new("Toni", "Campus Director")

array = [1, 42, 19, 25, 100, {"Gavin"=>"Instructor",
                              "Car"=>"Tesla",
                              "Job"=>"The Iron Yard"},
         "String", "Other String", employee]

# Freeze dry my object
File.write(JSON_FILE, array.to_json)

# Thaw it out
other_array = JSON.parse(File.read(JSON_FILE))

p other_array
