require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  'this is a secret!'
end

get '/cat_long' do
  send_file 'cat.html'
end

get '/random-cat' do
  @name = %w[Amigo Oscar Viking].sample
  erb :index
end

post '/named-cat' do
  p params
  @instance_var = params[:param_name]
  erb :index
end

get '/catform' do
  erb :catform
end
