require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    session[:player_one_hp] = 60
    session[:player_two_hp] = 60

    redirect '/play'
  end

  get '/play' do
    @player_one = session[:player_one]
    @player_one_hp = session[:player_one_hp]
    @player_two = session[:player_two]
    @player_two_hp = session[:player_two_hp]
    erb(:play)
  end

  post '/attack_confirmation' do
    @player_one = session[:player_one]
    @player_two = session[:player_two]

    erb(:attack_confirmation)
  end

  post '/attack_confirmation' do
    'Hello World'
  end

  run! if app_file == $PROGRAM_NAME
end
