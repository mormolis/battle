require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/start' do
    @name = params[:name]    
  end

  run! if app_file == $0
end
