require 'sinatra/base'
require_relative './player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :form
  end

  get '/infrastructure' do
    '<h1>Testing infrastructure working!</h1>'
  end

  post '/names' do    
    $game = Game.new(params[:player1], params[:player2])
    $player1 = $game.player1
    $player2 = $game.player2
    redirect('/play')
  end

  get '/play' do
    erb :play
  end

  post '/p1-attacks' do
    $game.attack($player2)
    erb :p1attacks
  end
end
