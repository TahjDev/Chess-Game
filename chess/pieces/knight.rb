
require_relative '../Piece'
require_relative 'steppable'

class Knight < Piece
    include Steppable
    def symbol
        '♞'.colorize(color)
    end

    protected

    def move_diffs
      @move_diffs = [
        [-2, -1],
        [-2,  1],
        [-1, -2],
        [-1,  2],
        [ 1, -2],
        [ 1,  2],
        [ 2, -1],
        [ 2,  1]
      ]

    end    

end