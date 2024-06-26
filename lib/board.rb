require_relative 'player.rb'
require_relative 'game.rb'

class Board

    @@board = []
    @@game = ''
    def initialize
        self.create_board
        @@game = Game.new
    end

    def self.display_board
        @@board.each do |x|
            puts x.each { |p| p}.join('')
        end
    end

    def self.mark_board(idx1, idx2, sym)
        @@board[idx1][idx2] = " #{sym} "
    end

    def self.get_board_value(idx1, idx2)
        @@board[idx1][idx2]
    end

    private

    def create_board
        @@board = [
            [" 1 ", "|", " 2 ", "|", " 3 "],
            ["-----------"],
            [" 4 ", "|", " 5 ", "|", " 6 "],
            ["-----------"],
            [" 7 ", "|", " 8 ", "|", " 9 "]]
    end
end
