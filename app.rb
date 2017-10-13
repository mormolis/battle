require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  
  before do
    @game = Game.current_game 
  end
  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.set_current_game(Player.new(params[:name1]), Player.new(params[:name2]))
    redirect '/play'
  end


  get '/play' do
    erb(:play)
  end

  post '/attack' do
    @game.attack(@game.players.last)
    erb(:attack)
  end

  get '/switch_turns' do
    redirect @game.path_to_string
  end

  get '/game_over' do
    erb(:game_over)
  end

  run! if app_file == $0
end
