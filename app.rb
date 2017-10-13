require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  enable :sessions

  post '/names' do
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
    @game.attack(@game.players.last)
    erb(:attack)
  end

  get '/switch_turns' do
  @game = $game
    if @game.players.last.hp_value <= 0 
      redirect '/game_over'
    else   
      @game.switch_turn
      redirect '/play'
    end
  end

  get '/game_over' do
    @game = $game
    "#{@game.players.first.name} has won!"
  end

  run! if app_file == $0
end
