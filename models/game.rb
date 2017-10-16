class Game

  def initialize(shoot1, shoot2)
    @shoot1 = shoot1
    @shoot2 = shoot2
  end

  def shoot
    case
    when @shoot1 == "rock" && @shoot2 == "scissors" || @shoot1 == "scissors" &&  @shoot2 == "rock"
      return "Rock smashes scissors!"
    when @shoot1 == "paper" &&  @shoot2 == "rock" || @shoot1 == "rock" && @shoot2 == "paper"
      return "Paper covers rock!"
    when @shoot1 == "paper" && @shoot2 == "scissors" || @shoot1 == "scissors" && @shoot2 == "paper"
      return "Scissors cut paper!"
    end
  end

end
