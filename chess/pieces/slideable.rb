module Slideable

    HORIZONTAL_DIRS = [
        [1, 0]
        [-1, 0]
        [0, 1]
        [0, -1]
    ].freeze

    DIAGONAL_DIRS = [
        [-1,-1]
        [1,1]
        [1,-1]
        [-1,1]
    ].freeze

    def horiztonal_dirs 
        HORIZONTAL_DIRS
    end

     def diagonal_dirs 
        DIAGONAL_DIRS
    end


    def moves
        moves = []
        move_dirs.each do |dx, dy|
            moves += grow_unblocked_moves_in_dir(dx, dy)
        end
        moves
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        row, col = self.pos
        moves = []
        while self.board.valid_pos?([row, col]) 
            row += dx 
            col += dy
            if self.board[row, col] == nil
                moves << [row, col]   
            elsif self.board[row, col].color != color
                moves << [row,col]
                break
            elsif self.board[row, col].color == color
                break
            end
        end
        moves 
    end
end