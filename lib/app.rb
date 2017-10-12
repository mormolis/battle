require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :form
  end

  get '/infrastructure' do
    '<h1>Testing infrastructure working!</h1>'
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    session[:player1_hp] = 60
    session[:player2_hp] = 60
    # session[:p1_attacks] = false
    redirect('/play')
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1_hp = session[:player1_hp]
    @player2_hp = session[:player2_hp]
    erb :play
  end

  post '/p1-attacks' do
    session[:player2_hp] -= 5
    erb :p1attacks
  end
end
