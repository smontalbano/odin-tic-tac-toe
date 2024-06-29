require_relative 'lib/board'
require_relative 'lib/player'
require_relative 'lib/game'

puts "Enter player one's name:"
player_one = Player.new(gets.chomp)
puts "Enter player two's name:"
player_two = Player.new(gets.chomp)
board = Board.new
game = Game.new
Board.display_board
winner = ''
i = 1

while i > 0
  puts player_one.name + "'s turn"
  Game.player_move(gets.chomp.to_i, player_one)
  Board.display_board
  if game.win?
    winner = player_one.name
    break
  end
  puts player_two.name + "'s turn"
  Game.player_move(gets.chomp.to_i, player_two)
  Board.display_board
  if game.win?
    winner = player_two.name
    break
  end

end

puts "#{winner} wins!"
