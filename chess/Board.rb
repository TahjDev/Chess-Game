require_relative "Piece"

class Board

    def initialize
        @grid = Array.new(8) {Array.new(8)}
        
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
         @grid[row][col]= val
    end

    def move_piece(start_pos, end_pos)
        piece = start_pos
        
    end

    def valid_pos?(pos)
        pos.all? {|ele| ele >= 0 && ele <= 7}
    end

end