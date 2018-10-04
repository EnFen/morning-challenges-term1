require 'matrix'

class Maze
<<<<<<< HEAD
    def initialize(map)            
        @map = Matrix[*map]
        @position = @map.index(2)
=======
    # List of valid moves, each mapped to a row and column offset hash
    # eg. moving north means going up one row (-1 rows, 0 columns) in the maze array
    @@valid_moves = {
        'N': { row: -1, col: 0 },
        'S': { row: 1, col: 0 },
        'E': { row: 0, col: 1 },
        'W': { row: 0, col: -1 }
    }

    def initialize(maze)
        @maze = maze
        # Find the start location (element with value 2)
        # First find the row that includes the value 2
        start_row = maze.find { |row| row.include?(2) }
        # Construct player position hash from column and row indexes
        @player_position = { col: start_row.index(2), row: maze.index(start_row) }
>>>>>>> 19cb0abbbb65d615711988564ae54d46d1ac4129
    end

    def walk(moves)
<<<<<<< HEAD
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
=======
        for move in moves do
            # Convert move to symbol so we can use it to reference @@valid_moves
            move = move.to_sym
            # Ignore invalid moves
            if @@valid_moves[move]
                # Adjust the player position according to the direction moved
                @player_position[:col] += @@valid_moves[move][:col]
                @player_position[:row] += @@valid_moves[move][:row]
                # Get the value at the new location in the maze
                # This will fail if we're outside the maze, triggering the rescue clause
                value = @maze[@player_position[:row]][@player_position[:col]]
                # Hit a wall?
                return 'Dead' if value == 1
                # Reached the exit?
                return 'Finish' if value == 3
            end
        end
        # If we didn't finish or die, then we're lost!
        'Lost'
    rescue
        'Dead'
>>>>>>> 19cb0abbbb65d615711988564ae54d46d1ac4129
    end
end
