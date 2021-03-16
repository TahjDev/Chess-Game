module Slideable

    HORIZONTAL_DIRS = [
        [1, 0]
        [-1, 0]
        [0, 1]
        [0, -1]
    ]

    DIAGONAL_DIRS = [
        [-1,-1]
        [1,1]
        [1,-1]
        [-1,1]
    ]
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
        while self.board.valid_pos?([row, col]) && self.board[row, col] != nil
            row += dx 
            col += dy
             moves << [row, col]   
        end
        moves 
    end
end