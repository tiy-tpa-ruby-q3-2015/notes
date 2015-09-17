# gem install sinatra
require 'sinatra'

require 'haml'

# gem install sinatra-contrib
require 'sinatra/reloader' if development?

# NOTE:
#   - To run this code:   ruby web.rb
#   - To see the web app:  open browser to http://localhost:3000
#   - If you change the code: CONTROL-C and rerun    ruby web.rb

get '/' do
  # Read the list of people if the people.txt file exists

  # # Normal (long) form for setting @people
  # if File.exist?("people.txt")
  #   @people = File.readlines("people.txt")
  # else
  #   @people = []
  # end
  #
  # # Shorter form relying on the fact that `if` returns a value
  # # and avoids having `@people = ` twice in the code
  # @people = if File.exist?("people.txt")
  #   File.readlines("people.txt")
  # else
  #   []
  # end

  # Code Golf FTW
  # Uses the `ternary` operator

  # result =  (condition)              ?      if true                 : if false
  @people  = File.exist?("people.txt") ? File.readlines("people.txt") : []            # WE WROTE THIS

  haml :index
end

post '/save' do
  # Open the people.txt file for appending
  File.open("people.txt", "a+") { |file| file.puts "We heard from a #{params["age"]} that is a #{params["title"]}" }   # WE WROTE THIS

  # Yo, browser, redirect (302) to a new URL ("/") when you get this reply
  redirect '/'
end
