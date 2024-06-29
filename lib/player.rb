# frozen_string_literal: true

require_relative 'board'
require_relative 'game'

class Player
  attr_accessor :name
  attr_reader :sym

  @@player_count = 0
  @player_number = 0
  def initialize(name)
    @@player_count += 1
    self.name = name
    puts "#{name} has joined the game!"
    @player_number = @@player_count == 1 ? 1 : 2
    @sym = @@player_count == 1 ? 'X' : 'O'
  end
end
