#
# Step 01:
#
#  Just make a Sinatra app with the two URLs the API requires
#
require 'json'
require 'sinatra'
require 'sinatra/reloader' if development?

post '/game' do
end

post '/move' do
end
