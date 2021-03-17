module Steppable
    def moves
        moves = []
        move_dirs.each do |dx, dy|
            moves += grow_unblocked_moves_in_dir(dx, dy)
        end
        moves
    end
end