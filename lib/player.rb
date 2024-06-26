require_relative 'board.rb'
require_relative 'game.rb'

class Player
    attr_accessor :name
    attr_reader :sym

    @@player_count = 0
    @player_number = 0
    def initialize(name)
        @@player_count += 1
        self.name = name
        puts "#{name} has joined the game!"
        @@player_count == 1 ? @player_number = 1 : @player_number = 2
        @@player_count == 1 ? @sym = 'X' : @sym = 'O'
    end
end
