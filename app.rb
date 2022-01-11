require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_one_name]), Player.new(params[:player_two_name]))
    redirect '/play'
  end

  def load_players
    @player_one = $game.player_one
    @player_two = $game.player_two
    @current_player = $game.current_player
    @other_player = $game.other_player
  end

  get '/play' do
    load_players
    erb(:play)
  end

  get '/attack' do
    load_players
    $game.attack($game.other_player)
    $game.advance_turn
    erb(:attack)
  end
end