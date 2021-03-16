class Rook 
    def move_dirs
        HORIZONTAL_DIRS
        @move_dirs += (0..7).map { |el| el = [el, 0]} 
        @move_dirs += (0..7).map { |el| el = [0, el]} 
    end 
end