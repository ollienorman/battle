require 'sinatra'

configure do
  enable :sessions
  set :session_secret, "secret"
end

get '/' do
  "Hi"
end

get '/secret' do
  "This is super super secret indeed."
end

get '/ollie' do
  "Ollie is my pair partner today."
end

get '/duck' do
  '<div style="border: 3px dashed red">
  <img src="https://1.bp.blogspot.com/--3aHSQ3cWPg/WVqPpCbXYGI/AAAAAAAAHmo/UmGhgaY9_hMHFgXmo99ri7e4S2KVr8VDwCLcBGAs/s1600/170703loomingduck.jpg">
  </div>'
end