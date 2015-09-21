#
# Step 02:
#
#  Make the Sinatra app return *default* data (aka "hard coded")
#
require 'json'
require 'sinatra'
require 'sinatra/reloader' if development?

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
