#
# Step 11:
#
# Creates a "result_helper" method in Sinata code (e.g. outside of the Board
# class) to remove the duplication of generating the result hash.
#
# This is put *OUTSIDE* the Board class since it has to do with generating
# web-responses, so it belongs more in the Sinatra code (web) than it does
# in the Board (tic-tac-toe) class. We want to keep methods/code that have
# to do with generating responses inside the Web code and leave the "Board"
# implementation only having to with the game
#
require 'json'
require 'sinatra'
require 'sinatra/reloader' if development?

class Board
  attr_accessor :positions,
                :winning_rows

  def initialize
    self.positions = [
      " ", " ", " ",
      " ", " ", " ",
      " ", " ", " ",
    ]

    self.winning_rows = [
      [1,2,3],
      [4,5,6],
      [7,8,9],
      [1,4,7],
      [2,5,8],
      [3,6,9],
      [1,5,9],
      [3,5,7]
    ]
  end

  def winner_chicken_dinner(xo)
    @winning_rows.any? { |winning_row|
      winning_row.all? { |position| @positions[position-1] == xo } }
  end

  def board_full?
    @positions.all? { |position| position != ' '}
  end

  def state
    if winner_chicken_dinner("X")
      return "player X wins"
    elsif winner_chicken_dinner("O")
      return "player O wins"
    elsif board_full?
      return "tie"
    else
      return "playing"
    end
  end
end

configure do
  set :board, Board.new
end

before do
  content_type 'application/json'
  headers 'Access-Control-Allow-Origin' => '*'
end

# NOTE, this does *not* go inside the Board class
def result_helper(board)
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

  return result
end

post '/game' do
  board = Board.new
  settings.board = board

  status 201

  result = result_helper(board)

  result.to_json
end

get '/game' do
  settings.board = board

  result = result_helper(board)

  result.to_json
end

post '/move' do
  board = settings.board

  player   = params[:player]
  position = params[:position].to_i

  board.positions[position] = player

  result = result_helper(board)

  result.to_json
end
