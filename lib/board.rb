require_relative 'game.rb'

class Board
    @@board = [ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

    WINS = [ [0, 1, 2], [3, 4, 5], [6, 7, 8],       #Horizonatal Lines
             [0, 3, 6], [1, 4, 7], [2, 5, 8],       #Vertical Line
             [0, 4, 8], [2, 4, 6]]                  #Diagonal Lines
    @winner = ''

    def display_board
        puts " #{@@board[0]} | #{@@board[1]} | #{@@board[2]} "
        puts '-----------'
        puts " #{@@board[3]} | #{@@board[4]} | #{@@board[5]} "
        puts '-----------'
        puts " #{@@board[6]} | #{@@board[7]} | #{@@board[8]} "
    end

    def mark_square(sel, sym)
        @@board[sel - 1] = sym
    end

    def win?(sym)
        WINS.any? { |line| line.all? { |idx| self.board[idx] == sym}}
    end
end
