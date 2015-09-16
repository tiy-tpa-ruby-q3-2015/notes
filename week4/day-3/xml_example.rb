require 'builder'

class Employee
  attr_accessor :name, :title
  # @name
  # @title

  def initialize(name, title)
    self.name = name
    self.title = title
  end
end

# puts "My working directory"
# p Dir.pwd

# puts "Current ruby script"
# p __FILE__

#  CONSTANT  = method       KEYWORD   + STRING
#  CONSTANT  = <---- STRING --------> + STRING
#  CONSTANT  = <------------- STRING -------------->
   XML_FILE = File.dirname(__FILE__) + "/data.xml"
#  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#  Puts my data.json in the same directory as *THIS*
#  ruby script

# puts "Data file in the same directory as my ruby script"
# p JSON_FILE

database = []
database << Employee.new("Toni", "Campus Director")
database << Employee.new("Gavin", "Instructor")
database << Employee.new("Jason", "Instructor")


builder = Builder::XmlMarkup.new

# DSL (Domain Specific Language)
xml = builder.employees do |employees|
  database.each do |database_employee|
    employees.employee do |employee|
      employee.name database_employee.name
      employee.title database_employee.title
    end
  end
end

puts xml
# # Freeze dry my object
# File.write(JSON_FILE, array.to_json)
#
# # Thaw it out
# other_array = JSON.parse(File.read(JSON_FILE))
#
# p other_array
