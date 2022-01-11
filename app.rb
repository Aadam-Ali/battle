require 'sinatra/base'
require 'sinatra/reloader'
require 'player'

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

  def load_player_names
    @player_one_name = $player_one.name
    @player_two_name = $player_two.name
  end

  get '/play' do
    load_player_names
    erb(:play)
  end

  get '/attack' do
    load_player_names
    erb(:attack)
  end
end