require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  enable :sessions

  post '/names' do
    # $player1 = Player.new(params[:name1])
    # $player2 = Player.new(params[:name2])
    @player_1 , @player_2 = Player.new(params[:name1]), Player.new(params[:name2])
    $game = Game.new(@player_1, @player_2)
    @game = $game
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/attack' do
    @game = $game
    @player_2 = @game.player_2
    @game.attack(@player_2)
    erb(:attack)
  end

  run! if app_file == $0
end
