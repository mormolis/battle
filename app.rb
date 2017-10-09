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

get '/cat' do
  erb(:index)
end
