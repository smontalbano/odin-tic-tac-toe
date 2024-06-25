class Player
    attr_accessor :name

    def initialize(name)
        @name = name
        puts "#{name} has joined the game!"
    end

end
