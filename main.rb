require_relative 'lib/board.rb'
require_relative 'lib/player.rb'

puts "Enter player one's name:"
player_one = Player.new(gets.chomp)
puts "Enter player two's name:"
player_two = Player.new(gets.chomp)
board = Board.new
i = 1

while i > 0
    puts board.to_s
    puts player_one.name + "'s turn: "
end
