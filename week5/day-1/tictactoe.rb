require 'json'
require 'sinatra'
require 'sinatra/reloader' if development?

set :bind, "0.0.0.0"

configure do
  set :board, Board.new
end

class Board
  attr_accessor :positions, :winning_rows, :current_player,
                :player_X_name, :player_O_name

  def initialize
    self.positions = [
      " ", " ", " ",
      " ", " ", " ",
      " ", " ", " "
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
    self.current_player = "X"
  end

  def winner_chicken_dinner(xo)
    @winning_rows.any? { |winning_row|
      winning_row.all? { |position| @positions[position-1] == xo } }
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

  def board_full?
    positions.all? { |position| position != " " }
  end

  def make_move(player, position)
    self.positions[position] = player

    if self.current_player == "X"
      self.current_player = "O"
    else
      self.current_player = "X"
    end
  end
end


before do
  content_type 'application/json'
  headers 'Access-Control-Allow-Origin' => '*'
end

def result_helper(board)
  result = {
    "status" => "ok",
    "current_player" => board.current_player,
    "players" => { "X" => board.player_X_name,
                   "O" => board.player_O_name
                 },
    "board" => { "state" => board.state,
                "positions" => { "0" => board.positions[0],
                                 "1" => board.positions[1],
                                 "2" => board.positions[2],
                                 "3" => board.positions[3],
                                 "4" => board.positions[4],
                                 "5" => board.positions[5],
                                 "6" => board.positions[6],
                                 "7" => board.positions[7],
                                 "8" => board.positions[8]
                               }
               }
            }

  return result
end

post '/game' do
  board = Board.new
  settings.board = board
  board.player_X_name = params["player_X_name"]
  board.player_O_name = params["player_O_name"]
  status 201
  result = result_helper(board)

  result.to_json
end

get '/game' do
  board = settings.board
  status 200
  result = result_helper(board)

  result.to_json
end

post '/move' do
  board = settings.board
  status 200
  player = params["player"]
  position = params["position"].to_i

  board.make_move(player, position)
  result = result_helper(board)

  result.to_json
end
