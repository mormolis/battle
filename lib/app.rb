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
    redirect('/play')
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :play
  end
end
