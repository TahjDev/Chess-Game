

class Piece 

    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
       @color = color
       @board = board
       @pos = pos
    end

    def to_s 
        color.to_s
    end



end