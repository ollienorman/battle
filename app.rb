require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:Player1])
    $player_2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play' do
    # @player1 = $player_1.name 
    # @player2 = $player_2.name
    # @player1hp = $player_1.hp
    # @player2hp = $player_2.hp
    erb(:play)
  end

  get '/player_1_attack' do
    $player_1.attack($player_2)
    redirect '/play'
  end

  get '/player_2_attack' do
    $player_2.attack($player_1)
    redirect '/play'
  end

  run! if app_file == $PROGRAM_NAME
end
