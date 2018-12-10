require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  "hello!"
end

get '/secret' do
  "this is a secret!"
end

get '/cat_long' do
  send_file "cat.html"
end

get '/cat' do
  @cat_name = %w[Amigo Oscar Viking].sample
  erb :index
end
