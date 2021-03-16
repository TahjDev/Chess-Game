require_relative "Piece"

class Board

    def initialize
        @grid = Array.new(8) {Array.new(8)}
        @grid = @grid.map_with_index do |row, i|
            row.map { |ele| ele = i.between(2, 6) ? nil : Piece.new }
        end
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
        raise "null_piece" if self[start_pos] == nil
        raise "piece there" unless self[end_pos] != nil 
    end

    def valid_pos?(pos)
        pos.all? {|ele| ele >= 0 && ele <= 7}
    end

end
