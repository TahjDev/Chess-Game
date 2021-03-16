require_relative "../Piece.rb"
require_relative "slideable"

class Bishops

    include Slideable
    def move_dirs
        DIAGONAL_DIRS
    end 

end