require_relative "../Piece.rb"
require_relative "slideable"

class Bishops
    include Slideable
    def symbol
        '♝'.colorize(color)
    end

    
    def move_dirs
        DIAGONAL_DIRS
    end 

end