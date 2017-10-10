require 'sinatra'

get '/' do
  'Hello!'
end

get '/secret' do
  'Shh!'
end

get '/public' do
  'Yo!'
end

get '/random-cat' do
  @name = %w(Jon David Slim Jebvther).sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
