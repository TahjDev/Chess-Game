module Slideable

    HORIZONTAL_DIRS = [
        [1, 0],
        [-1, 0],
        [0, 1],
        [0, -1]
    ].freeze

    DIAGONAL_DIRS = [
        [-1,-1],
        [1,1],
        [1,-1],
        [-1,1]
    ].freeze


garrol the coda the ultimate programma http XD
    def moves
        new_moves = []
        move_dirs.each do |dx, dy|
            # debugger
            new_moves += grow_unblocked_moves_in_dir(dx, dy)
        end
        # debugger
        new_moves
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        row , col = self.pos
        new_moves = []
        # debugger
        row += dx
        col += dy
        while self.board.valid_pos?([row, col]) 
            # debugger
            if self.board[[row, col]].nil?
                new_moves << [row, col]   
            elsif self.board[[row, col]].color != color
                new_moves << [row,col]
                break
            elsif self.board[[row, col]].color == color
                break
            end
            row += dx 
            col += dy
        end
        # debugger
        new_moves 
    end
end