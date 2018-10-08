# Connect 4 
# Ref: https://en.wikipedia.org/wiki/Connect_Four
#
# Task
#  	The game consists of a grid (7 columns and 6 rows) and two players
#   that take turns to drop a plastic disc into the top of any chosen column.
#
#   The pieces fall straight down, occupying the next available space within the column.
#
#   The objective of the game is to be the first to form a horizontal, vertical, or
#   diagonal line of four of one's own discs.
#
# Your task is to create a Class called Connect4 that has a method called play,
# which takes one argument for the column where the player is going to place their disc.
# 
# Rules
#  	If a player successfully has 4 discs horizontally, vertically or diagonally
#   then you should return "Player n wins!” where n is the current player either 1 or 2.
#
# If a player attempts to place a disc in a column that is full then you should
# return ”Column full!” and the next move must be taken by the same player.
#
# If the game has been won by a player, any following moves should return ”Game has finished!”.
#
# Any other move should return ”Player n has a turn” where n is the current player either 1 or 2.
#
# Player 1 starts the game every time and alternates with player 2. Your class must
# keep track of who's turn it is.
#
# The columns are numbered 0-6 left to right.

require 'matrix'

class Matrix
  public :"[]=", :set_element, :set_component
end

class Connect4
  def initialize
    #your code here
    @grid = Matrix[
      [0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0] 
    ]
    @players = [1, 2]
    @player = @players[1]
  end

  def play(column)
    # CHANGE PLAYER
    @player = @players[@players.index(@player) - 1]

    #CHECK IF GAME FINISHED
    if win_condition(@grid) == true
      return "Game has finished!"
    end

    # MODIFY POSITION IN GRID & CHECK IF COLUMN FULL
    # iterator
    i = @grid.row_count - 1
    if @grid[0, column] > 0
        # all iterations completed; "Column full"
        return "Column full!"
    end
    # for each position in grid column (from bottom);
    for position in @grid.column(column).to_a.reverse do
      if position > 0
        # iterate, and move to next
        i -= 1
        next
      elsif position == 0
        # replace with player no; break
        @grid[i, column] = @player
        # puts @grid
        break      
      end      
    end

    # CHECK IF WIN CONDITION REACHED
    if win_condition(@grid) == true
      return "Player #{@player} wins!"
    end

    # IF NO COLUMN FULL OR WIN CONDITION, RETURN PLAYERS TURN
    "Player #{@player} has a turn"
  end

  def win_condition(grid)
    # check rows
    for row in grid.row_vectors do
      row.to_a.each_cons(4) {|four| return true if four == [1,1,1,1] || four == [2,2,2,2]}
    end

    # check columns
    for column in grid.column_vectors do
      column.to_a.each_cons(4) {|four| return true if four == [1,1,1,1] || four == [2,2,2,2]}
    end

    #check diagonals
    
  end

end

# @game = Connect4.new
# @game.win_condition(Matrix[
#       [0,0,0,0,0,0,0],
#       [0,0,0,0,0,0,0],
#       [0,0,0,0,0,0,0],
#       [0,0,0,0,0,0,0],
#       [0,0,0,0,0,0,0],
#       [0,0,0,0,0,0,0] 
#     ])
