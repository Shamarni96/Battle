require 'sinatra/base'

class Battle < Sinatra::Base
  get '/test' do
    "Testing infrastructure working!"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @player1_name = params[:player1_name]
    @player2_name = params[:player2_name]
    erb(:play)
  end

  run! if app_file == $0
end
