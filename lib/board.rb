# frozen_string_literal: true

require_relative 'player'
require_relative 'game'

class Board
  @@board = []
  @@game = ''
  def initialize
    create_board
    @@game = Game.new
  end

  def self.display_board
    @@board.each do |x|
      puts x.each { |p| }.join('')
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
      [' 1 ', '|', ' 2 ', '|', ' 3 '],
      ['-----------'],
      [' 4 ', '|', ' 5 ', '|', ' 6 '],
      ['-----------'],
      [' 7 ', '|', ' 8 ', '|', ' 9 ']
    ]
  end
end
