module Steppable
    def moves
        new_moves = []
        move_diffs.each do |dx, dy|
            # moves += grow_unblocked_moves_in_dir(dx, dy)
            row, col = self.pos
            new_pos = [row + dx, col + dy]
            piece = self.board[new_pos]
            if self.board.valid_pos?(new_pos) && (piece == nil || piece.color != self.color)
                new_moves << new_pos
            end
        end
        new_moves
    end

    def move_diffs
        raise NotImplementedError
    end
end