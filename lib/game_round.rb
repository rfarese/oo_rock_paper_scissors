class GameRound
  attr_accessor :player_guess, :computer_guess
  attr_reader :game_options, :winning_guesses, :winner

  def initialize(player_guess, computer_guess)
    @player_guess = player_guess
    @computer_guess = computer_guess
    @game_options = {
      "rock" => "r",
      "paper" => "p",
      "scissors" => "s"
    }
    @winning_guesses = {
      "r" => "s",
      "s" => "p",
      "p" => "r"
    }
  end

  def winner
    if player_guess == computer_guess
      "Tie!"
    elsif winning_guesses[player_guess] == computer_guess
      "Player wins this round!"
    elsif winning_guesses[computer_guess] == player_guess
      "Computer wins this round!"
    end
  end
end
