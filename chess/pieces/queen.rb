require_relative "../Piece.rb"
require_relative "slideable"

class Queen

    include Slideable
    def move_dirs
        HORIZONTAL_DIRS + DIAGONAL_DIRS
    end 

end