class Game
    attr_reader :player_one, :player_two, :winner, :win, :tie
    @win = false
    @tie = false
    @turn_count = 0
    @sym_one = 'X'
    @sym_two = 'O'
    @@board = [ ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    WINS = [ [0, 1, 2], [3, 4, 5], [6, 7, 8],       #Horizonatal Lines
    [0, 3, 6], [1, 4, 7], [2, 5, 8],                #Vertical Line
    [0, 4, 8], [2, 4, 6]]                           #Diagonal Lines

    def initialize(player_one_name, player_two_name)
        @player_one = player_one_name
        @player_two = player_two_name
    end

    def turn(player)
        player == @player_one ? player = @player_one : player = @player_two
        player == @player_one ? sym = @sym_one : sym = @sym_two
        player_input(player, sym)
    end
    
    private

    def player_input(player, sym)
        self.display_board
        puts "#{player}'s turn: "
        move = gets.chomp.to_i
        valid_move?(move) ? mark_square(player, move, sym) : invalid_move(player)
    end


    def valid_move?(sel)
        sel.between?(1, 9) && @@board[sel] == ' ' ? true : false 
    end
    
    def invalid_move(player)
        puts "Invalid move. Input must be between 1 and 9 and cannot be an occupied square."
        puts "Please try again."
        turn(player)
    end
    
    def self.mark_square(player, sel, sym)
        @@board[sel - 1] = sym
        @turn_count += 1
        self.display_board
        win?(player, sym)
        self.tie? ? @tie = true : @tie = false
    end

    def win?(player, sym)
        if WINS.any? { |line| line.all? { |idx| @@board[idx] == sym}} then
            @win = true
            @winner = player
        end
    end

    def display_board
        puts " #{@@board[0]} | #{@@board[1]} | #{@@board[2]} "
        puts '-----------'
        puts " #{@@board[3]} | #{@@board[4]} | #{@@board[5]} "
        puts '-----------'
        puts " #{@@board[6]} | #{@@board[7]} | #{@@board[8]} "
    end
end