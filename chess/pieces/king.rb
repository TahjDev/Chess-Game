
require_relative 'piece'
require_relative 'stepable'

class King < Piece
    include Stepable
    def symbol
        '♚'.colorize(color)
    end

    protected

    def move_diffs(start_pos)
      @move_diffs = [
        [-1, -1],
        [-1,  1],
        [1, -1],
        [1,  1],
        [ 0, 1],
        [ 1,  0],
        [ 0, -1],
        [ -1,  0]
      ]
      
    end    

end