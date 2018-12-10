require 'sinatra'

get '/' do
  "hello!"
end

get '/secret' do
  'hi again!'
end
