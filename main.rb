# frozen_string_literal: true

require 'pry-byebug'
require_relative './lib/game'
tie_count = 0
puts "Enter player one's name: "
player_one = gets.chomp
puts "Enter player two's name: "
player_two = gets.chomp
game = Game.new(player_one, player_two)

while tie_count < 9
  game.turn(player_one)
  tie_count += 1
  if game.win
    puts "#{game.winner} wins!"
    break
  elsif tie_count == 9
    puts "It's a tie!"
    break
  end
  game.turn(player_two)
  tie_count += 1
  if game.win
    puts "#{game.winner} wins!"
    break
  elsif tie_count == 9
    puts "It's a tie!"
    break
  end
end

# def tie_win?
#   if game.win
#     puts "#{game.winner} wins!"
#     true
#   elsif tie_count == 9
#     puts "It's a tie!"
#     true
#   else
#     false
#   end
# end
