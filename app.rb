require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  enable :sessions

  post '/names' do
    Game.set_current_game(Player.new(params[:name1]), Player.new(params[:name2]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.current_game
    erb(:play)
  end

  post '/attack' do
    @game = Game.current_game
    @game.attack(@game.players.last)
    erb(:attack)
  end

  get '/switch_turns' do
    @game = Game.current_game
    redirect @game.path_to_string
  end

  get '/game_over' do
    @game = Game.current_game
    erb(:game_over)
  end

  run! if app_file == $0
end
