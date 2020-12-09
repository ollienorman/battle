require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:Player1]
    session[:player2] = params[:Player2]
    session[:player1hp] = 10
    session[:player2hp] = 10
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1hp = session[:player1hp]
    @player2hp = session[:player2hp]
    erb(:play)
  end

  get '/player_1_attack' do
    session[:player2hp] -= 1
    redirect '/play'
  end
  run! if app_file == $PROGRAM_NAME
end
