#
# Step 03:
#
#  Set the Content-Type to json so that we get nice output from 'http' tool
#  (and properly tell clients that is what we are returning)
#
#  Add the Access-Control-Allow-Origin header to allow requests "across domains"
#  so that the Javascript code from the front end will avoid errors
#
require 'json'
require 'sinatra'
require 'sinatra/reloader' if development?

before do
  content_type 'application/json'
  headers 'Access-Control-Allow-Origin' => '*'
end

post '/game' do
  result = {
    "status" => "ok",
    "board" => { "state" => "playing",
                "positions" => { "0" => " ",
                                 "1" => " ",
                                 "2" => " ",
                                 "3" => " ",
                                 "4" => " ",
                                 "5" => " ",
                                 "6" => " ",
                                 "7" => " ",
                                 "8" => " ",
                               }
               }
            }

  result.to_json
end

post '/move' do
  result = {
    "status" => "ok",
    "board" => { "state" => "playing",
                "positions" => { "0" => " ",
                                 "1" => " ",
                                 "2" => " ",
                                 "3" => " ",
                                 "4" => " ",
                                 "5" => " ",
                                 "6" => " ",
                                 "7" => " ",
                                 "8" => " ",
                               }
               }
            }
  result.to_json
end
