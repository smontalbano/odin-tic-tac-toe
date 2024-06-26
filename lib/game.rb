require_relative 'board.rb'
require_relative 'player.rb'

class Game

    def initialize
    end

    def player_move(move, player)
        case move
        when 7
            Board.mark_board(0, 0, player.sym)
        when 8
            Board.mark_board(0, 2, player.sym)
        when 9
            Board.mark_board(0, 4, player.sym)
        when 4
            Board.mark_board(2, 0, player.sym)
        when 5
            Board.mark_board(2, 2, player.sym)
        when 6
            Board.mark_board(2, 4, player.sym)
        when 1
            Board.mark_board(4, 0, player.sym)
        when 2
            Board.mark_board(4, 2, player.sym)
        when 3
            Board.mark_board(4, 4, player.sym)
        end
    end

    def win?
        if Board.get_board_value(0, 0) == Board.get_board_value(0, 2) && Board.get_board_value(0, 0) == Board.get_board_value(0, 4) then
            true
        elsif Board.get_board_value(2, 0) == Board.get_board_value(2, 2) && Board.get_board_value(2, 0) == Board.get_board_value(2, 4) then
            true
        elsif Board.get_board_value(4, 0) == Board.get_board_value(4, 2) && Board.get_board_value(4, 0) == Board.get_board_value(4, 4) then 
            true
        else
            false
        end
    end

end
