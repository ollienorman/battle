require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:Player1])
    $player_2 = Player.new(params[:Player2])
    session[:player1hp] = 10
    session[:player2hp] = 10
    redirect '/play'
  end

  get '/play' do
    @player1 = $player_1.name 
    @player2 = $player_2.name
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
