# myapp.rb
require 'sinatra'

# Old School
# class Thing < WEBrick
#   def do_GET(request, response)
#     response.status = 200
#     response.body = "Hello world!"
#   end
# end
#
# server.mount "/", Thing

get '/' do
  'Hello world!'
end

get '/hello/' do
  "Please tell me your name"
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params['name'] is 'foo' or 'bar'
  "Hello #{params['name']}!"
end
