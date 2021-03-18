require_relative '../Piece'

class Pawn < Piece
    def symbol
        '♙'.colorize(color)
    end

    def moves
        forward_steps + side_attacks
    end

    def forward_dir
        if color == :black
            -1
        else
            1
        end
    end

    def forward_steps
        row, col = pos
        arr = []
        arr << [row + forward_dir, col]
        arr
    end

    def at_start_row?
        row, col = self.pos
        if row == 1 && self.color == :white
            return true
        elsif row == 6 && self.color == :black
            return true
        end
        false
    end

    def side_attacks
       
        white_arr = [[1,1],[1,-1]]
        black_arr = [[-1,1],[-1,-1]]
        moves = []
        if self.color == :white 
            white_arr.each do |dx, dy|
                row, col = self.pos
                new_pos = [row + dx, col + dy]
                # moves << new_pos if self.board[new_pos].color != self.color
                moves << new_pos if nil
            end
        else
             black_arr.each do |dx, dy|
                new_pos = [row + dx, col + dy]
                # moves << new_pos if self.board[new_pos].color != self.color
                moves << new_pos if self.board[new_pos].color != self.color
            end
        end
        moves
    end

    

end