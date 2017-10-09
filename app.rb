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
  "<img style='border: medium dashed red;' src='./cat.png'/>"
end
