require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class Battle < Sinatra::Base
  get '/' do
    erb :form
  end

  get '/infrastructure' do
    '<h1>Testing infrastructure working!</h1>'
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect('/play')
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/attack' do
    @game = $game
    @game.attack(@game.players.last)
    erb :attack
  end

  get '/game_over' do
    @game = $game
    erb :game_over
  end
end
