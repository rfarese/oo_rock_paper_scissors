class Player
  attr_accessor :player_guess, :player_wins

  def initialize
    @player_wins = 0
  end

  def player_guess
    @player_guess = gets.chomp
  end
end
