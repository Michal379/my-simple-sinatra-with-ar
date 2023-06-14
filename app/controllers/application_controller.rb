class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    get '/games' do
        games = Game.all
        games.to_json
    end

    post '/games' do
        game = Game.create(
            
        )
    end


end  