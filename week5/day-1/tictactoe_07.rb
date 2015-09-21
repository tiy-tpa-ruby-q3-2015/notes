#
# Step 07:
#
#  Adds a Sinatra 'settings' to save away the board state between requests.
#  The web is "stateless" so we can't use instance variables to save the
#  board object between requests. Later we will learn how to use "cookies"
#  to make session stores. For now we will use sinatra's 'settings' to keep track.
#
require 'json'
require 'sinatra'
require 'sinatra/reloader' if development?

class Board
  attr_accessor :positions

  def initialize
    self.positions = [
      " ", " ", " ",
      " ", " ", " ",
      " ", " ", " ",
    ]
  end

  def state
    return "playing"
  end
end

configure do
  set :board, Board.new
end

before do
  content_type 'application/json'
  headers 'Access-Control-Allow-Origin' => '*'
end

post '/game' do
  board = Board.new
  settings.board = board

  result = {
    "status" => "ok",
    "board" => { "state" => board.state,
                "positions" => { "0" => board.positions[0],
                                 "1" => board.positions[1],
                                 "2" => board.positions[2],
                                 "3" => board.positions[3],
                                 "4" => board.positions[4],
                                 "5" => board.positions[5],
                                 "6" => board.positions[6],
                                 "7" => board.positions[7],
                                 "8" => board.positions[8],
                               }
               }
            }

  result.to_json
end

post '/move' do
  board = settings.board

  player   = params[:player]
  position = params[:position].to_i

  board.positions[position] = player

  result = {
    "status" => "ok",
    "board" => { "state" => board.state,
                "positions" => { "0" => board.positions[0],
                                 "1" => board.positions[1],
                                 "2" => board.positions[2],
                                 "3" => board.positions[3],
                                 "4" => board.positions[4],
                                 "5" => board.positions[5],
                                 "6" => board.positions[6],
                                 "7" => board.positions[7],
                                 "8" => board.positions[8],
                               }
               }
            }
  result.to_json
end
