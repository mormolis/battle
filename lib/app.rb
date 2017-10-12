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
    $player1 = Player.new(name: params[:player1])
    $player2 = Player.new(name: params[:player2])
    # session[:p1_attacks] = false
    redirect('/play')
  end

  get '/play' do
    erb :play
  end

  post '/p1-attacks' do
    erb :p1attacks
  end
end
