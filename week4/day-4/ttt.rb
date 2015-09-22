

post '/game' do
  reponse = {
     "status": "ok",
     "board": { "state": current_game_state,
                "positions": board.map { .... }
             }
    }

   response.to_json
end
