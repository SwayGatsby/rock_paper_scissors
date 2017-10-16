require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game.rb')

get '/:shoot1/:shoot2' do
  game = Game.new(params[:shoot1], params[:shoot2])
  @winner = game.shoot()
  erb(:result)
end
