class Game
  attr_accessor :player, :computer

  def initialize
    @player = Player.new
    @computer = Computer.new
  end
end
