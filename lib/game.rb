require_relative 'board.rb'

class Game
    attr_reader :player_one, :player_two
    @board = ''
    @winner = false
    @sym_one = 'X'
    @sym_two = 'O'


    def initialize(player_one_name, player_two_name)
        @player_one = player_one_name
        @player_two = player_two_name
        @board = Board.new()
        game_loop
    end

    def game_loop
        while !@winner do
            puts "#{player_one}'s turn:"
            @board.display_board
            move = gets.chomp
            @board.mark_square(move, sym_one)
            # if @board.win?()
        end
    end

    def winner?(sym)

    end
end
