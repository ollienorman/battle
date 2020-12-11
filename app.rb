require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:Player1])
    $player_2 = Player.new(params[:Player2])
    $game = Game.new($player_1, $player_2)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/player_1_attack' do
    $game.attack($player_2)
    $game.player_2.awake ? (redirect '/play') : (redirect '/loser')
  end

  get '/player_2_attack' do
    $game.attack($player_1)
    redirect '/play'
  end

  get '/loser' do
    erb :loser
  end

  run! if app_file == $PROGRAM_NAME
end
