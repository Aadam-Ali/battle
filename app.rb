require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_one = Player.new(params[:player_one_name])
    $player_two = Player.new(params[:player_two_name])
    redirect '/play'
  end

  def load_player
    @player_one = $player_one
    @player_two = $player_two
  end

  get '/play' do
    load_player
    erb(:play)
  end

  get '/attack' do
    load_player
    @player_one.attack(@player_two)
    erb(:attack)
  end
end