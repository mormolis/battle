require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player1, @player2 = params[:name1], params[:name2]
    erb(:play)
  end

  run! if app_file == $0
end
