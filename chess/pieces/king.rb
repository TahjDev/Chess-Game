
require_relative '../Piece'
require_relative 'steppable'

class King < Piece
    include Steppable
    def symbol
        '♚'.colorize(color)
    end

    protected

    def move_diffs
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