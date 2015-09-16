require 'erb'

class WelcomeEmail
  TEMPLATE     = File.read("templates/email.txt.erb")

  attr_accessor :name, :start_date, :tuition,
                :tuition_due_date, :email_address,
                :campus_director_name,
                :other_students_names

  def initialize(name, start_date, tuition,
                 tuition_due_date, email_address,
                 campus_director_name, other_students_names)
    self.name = name
    self.start_date = start_date
    self.tuition = tuition
    self.tuition_due_date = tuition_due_date
    self.email_address = email_address
    self.campus_director_name = campus_director_name
    self.other_students_names = other_students_names
  end

  def send
    # Come back to why this doesn't work in ATOM
    email_body = ERB.new(TEMPLATE).result(binding)

    # Here we would use an email library (gem)
    # to send the mail

    puts "Sending email to #{email_address}"
    puts email_body
  end

  def formatted_tuition
    "$ #{tuition}"
  end
end

email = WelcomeEmail.new("Gavin", "2015-12-01", 5,
                         "2015-09-21", "gavin@gstark.com",
                         "Toni", %w{Jason Gavin Sanam Byron})

email.send
