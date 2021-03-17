require_relative 'piece'

class Pawn < Piece
    def symbol
        '♙'.colorize(color)
    end
    

    def forward_dir
        if color == black
            -1
        else
            1
        end
    end

    def forward_steps
        row, col = pos
        row + forward_dir
    end

    def at_start_row?
        row, col = self.pos
        if row == 1 && self.color == white
            return true
        elsif row == 6 && self.color == black
            return true
        end

        false
    end

    def side_attacks
        row, col = self.pos
       
        piece = self.board row+1, col+1 || row+1, col-1 

        if self.color == white 

        end

    end
    def moves


    end
end