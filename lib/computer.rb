class Computer
  attr_accessor :computer_guess, :computer_wins

  def initialize
    @computer_wins = 0
  end

  def computer_guess
    @computer_guess = ['r', 'p', 's'].sample
  end
end
