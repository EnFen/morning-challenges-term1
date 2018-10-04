require 'matrix'

class Maze
    def initialize(map)            
        @map = Matrix[*map]
        @position = @map.index(2)
    end

    def walk(moves)
        direction = {N: [-1, 0], S: [1, 0], E: [0, 1], W: [0, -1]}
        moves.each do |move|
            row_traverse = direction[move.to_sym][0]
            col_traverse = direction[move.to_sym][1]
            @position[0] += row_traverse
            @position[1] += col_traverse
            if @map[*@position] == 3
                return 'Finish'
            elsif can_move?(@position) == false
                return 'Dead'
            end
        end
        return 'Lost'
    end

    def can_move?(position)
        if position.any?(&:negative?) || @map[*position] == nil || @map[*position] == 1
            return false             
        else
            return true
        end
    end
end
