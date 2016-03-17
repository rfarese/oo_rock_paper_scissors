require_relative 'game_round'
require_relative 'game'
require_relative 'computer'
require_relative 'player'

game = Game.new

while game.player.player_wins.to_i < 2 && game.computer.computer_wins.to_i < 2
  puts "Please guess 'r', 'p', or 's' for 'rock', 'paper', or 'scissors'."
  new_player_guess = game.player.player_guess
  new_computer_guess = game.computer.computer_guess
  game_round = GameRound.new(new_player_guess, new_computer_guess)
  puts "Player guesses #{game_round.game_options.key(new_player_guess)}"
  puts "Computer guesses #{game_round.game_options.key(new_computer_guess)}"
  puts game_round.winner
  if game_round.winner.include?("Computer")
    game.computer.computer_wins += 1
  elsif game_round.winner.include?("Player")
    game.player.player_wins += 1
  end
end

if game.player.player_wins == 2
  puts "The Player wins it all!"
elsif game.computer.computer_wins == 2
  puts "The Computer wins it all!"
end
