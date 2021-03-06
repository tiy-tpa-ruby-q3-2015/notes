#
# Step 06:
#
#  Extract the "state" to a method in the board class and call it on the
#  board object. This replaces the "hard coding" of the state to a method
#  we can later add "behavior" to.
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
    "playing"
  end
end

before do
  content_type 'application/json'
  headers 'Access-Control-Allow-Origin' => '*'
end

post '/game' do
  board = Board.new

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
  board = Board.new

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
