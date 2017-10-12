require 'sinatra/base'
require_relative './lib/Model_layer/player.rb'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end
  enable :sessions

  post '/names' do
    $name1 = Player.new(params[:name1]).name
    $name2 = Player.new(params[:name2]).name
    redirect '/play'
  end

  get '/play' do
    @player1, @player2 = $name1, $name2
    erb(:play)
  end

  post '/attack' do
    @player1, @player2 = $name1, $name2
    erb(:attack)
  end

  run! if app_file == $0
end
