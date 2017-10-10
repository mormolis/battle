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

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  @name = params[:name]
  erb(:index)
end
