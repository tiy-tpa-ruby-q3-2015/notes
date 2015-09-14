require 'net/https'
require 'webrick'

# NOTE:
#   - To run this code:   ruby web.rb
#   - To see the web app:  open browser to http://localhost:3000
#   - If you change the code: CONTROL-C and rerun    ruby web.rb


class PromptUser < WEBrick::HTTPServlet::AbstractServlet
  def do_GET(request, response)

    # Read the list of people if the people.txt file exists
    if File.exist?("people.txt")
      people = File.readlines("people.txt")
    else
      people = []
    end

    # Send an "OK" response
    response.status = 200

    # Send back some HTML as the body of the web page
    # PROTIP: Add a <style> section with some CSS!
    response.body = %{
      <html>
        <body>
        #{people.join("<br/>")}
        <form method="POST" action="/save">
          <ul>
            <li><input name="age"/></li>
            <li><input name="title"/></li>
          </ul>
          <button type="submit">Submit!</button>
        </form>
        </body>
      </html>
    }
  end
end

class SaveUser < WEBrick::HTTPServlet::AbstractServlet
  # Handle the posting of the form
  def do_POST(request, response)

    # Open the people.txt file for appending
    File.open("people.txt", "a+") do |file|
      # Record some data to that file
      file.puts "We heard from a #{request.query["age"]} that is a #{request.query["title"]}"
    end

    # Yo, browser, redirect (302) to a new URL ("/") when you get this reply
    response.status = 302
    response.header["Location"] = "/"
    # This is the body that will be shown if the browser doesn't handle redirects (hint: almost all do)
    response.body = "Saved!"
  end
end

# Make a new server on port 3000.  Access it with:   http://localhost:3000
server = WEBrick::HTTPServer.new(Port: 3000)
# Show the prompt (form) when the user does a GET on /
server.mount "/",     PromptUser
# Handle the POST when the user fills out the form
server.mount "/save", SaveUser

# This is needed to handle when you hit CONTROL-C in the terminal
trap("INT") { server.shutdown }

# This runs your webserver and doesn't exit until you hit CONTROL-C
server.start
