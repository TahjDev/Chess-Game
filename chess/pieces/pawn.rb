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
end