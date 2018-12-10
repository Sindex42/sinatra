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
  "<img src='http://bit.ly/1eze8aE'>"
end
