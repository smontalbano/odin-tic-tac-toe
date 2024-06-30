require_relative './lib/game.rb'
require_relative './lib/board.rb'

board = Board.new()
board.display_board

puts board.board[0]