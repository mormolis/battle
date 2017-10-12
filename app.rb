require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end
  enable :sessions

  post '/names' do
    $player1 = Player.new(params[:name1])
    $player2 = Player.new(params[:name2])
    redirect '/play'
  end

  get '/play' do
    @player_1_name, @player_2_name = $player1.name, $player2.name
    erb(:play)
  end

  post '/attack' do
    @player_1_name, @player_2_name = $player1.name, $player2.name
    erb(:attack)
  end

  run! if app_file == $0
end
