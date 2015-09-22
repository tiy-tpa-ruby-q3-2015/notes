# gem install sinatra
require 'sinatra'
require 'json'

post '/game' do
  response = {
    "status" => "ok",
    "board" => {
      "status" => "playing",
      "position" => {
        "0": " ",
        "1": " ",
        "2": " ",
        "3": " ",
        "4": " ",
        "5": " ",
        "6": " ",
        "7": " ",
        "8": " ",
      }
    }
  }

  response.to_json
end

post '/move' do
  response = {
    "status" => "ok",
    "board" => {
      "state" => "playing",
      "position" => {
        "0": " ",
        "1": " ",
        "2": " ",
        "3": " ",
        "4": " ",
        "5": " ",
        "6": " ",
        "7": " ",
        "8": " ",
      }
    }
  }

  response.to_json
end
