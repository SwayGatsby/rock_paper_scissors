require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game.rb')

get '/:shoot1/:shoot2' do
  case
  when params[:shoot1] == "rock" && params[:shoot2] == "scissors" || params[:shoot1] == "scissors" && params[:shoot2] == "rock"
    return "Rock smashes scissors!"
  when params[:shoot1] == "paper" && params[:shoot2] == "rock" || params[:shoot1] == "rock" && params[:shoot2] == "paper"
    return "Paper covers rock!"
  when params[:shoot1] == "paper" && params[:shoot2] == "scissors" || params[:shoot1] == "scissors" && params[:shoot2] == "paper"
    return "Scissors cut paper!"
  end
end
