class Board
    @board = []
    def initialize
        self.create_board
    end

    def to_s
        @board.each do |x|
            puts x.each { |p| p}.join('')
        end
    end

    private

    def create_board
        @board = [
            ["   |", "   ", "|  "],
            ["-----------"],
            ["   |", "   ", "|  "],
            ["-----------"],
            ["   |", "   ", "|  "]]
    end
end
