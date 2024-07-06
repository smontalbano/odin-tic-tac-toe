# frozen_string_literal: true

# The game class is an object with all the rules and
# functions needed to play a game of Tic-Tac-Toe with
# 2 players

class Game
  attr_reader :player_one, :player_two, :winner, :win

  @win = false
  @turn_count = 0
  @@board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], # Horizonatal Lines
          [0, 3, 6], [1, 4, 7], [2, 5, 8], # Vertical Line
          [0, 4, 8], [2, 4, 6]].freeze # Diagonal Lines

  def initialize(player_one_name, player_two_name)
    @player_one = player_one_name
    @player_two = player_two_name
  end

  def turn(player)
    player = player == @player_one ? @player_one : @player_two
    sym = player == @player_one ? 'X' : 'O'
    player_input(player, sym)
  end

  private

  def player_input(player, sym)
    display_board
    puts "#{player}'s turn: "
    move = gets.chomp.to_i
    valid_move?(move) ? mark_square(player, move, sym) : invalid_move(player)
  end

  def valid_move?(sel)
    sel.between?(1, 9) && @@board[sel - 1] == ' ' ? true : false
  end

  def invalid_move(player)
    puts 'Invalid move. Input must be between 1 and 9 and cannot be an occupied square.'
    puts 'Please try again.'
    turn(player)
  end

  def mark_square(player, sel, sym)
    @@board[sel - 1] = sym
    #display_board
    win?(player, sym)
  end

  def win?(player, sym)
    return unless WINS.any? { |line| line.all? { |idx| @@board[idx] == sym } }

    @win = true
    @winner = player
  end

  def display_board
    puts " #{@@board[0]} | #{@@board[1]} | #{@@board[2]} "
    puts '-----------'
    puts " #{@@board[3]} | #{@@board[4]} | #{@@board[5]} "
    puts '-----------'
    puts " #{@@board[6]} | #{@@board[7]} | #{@@board[8]} "
  end
end
