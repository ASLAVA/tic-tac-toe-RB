# file: board.rb

# Class to make the board
class Board
  # Create the board
  def initialize
    @board = Array.new(9, ' ')
    # show_board
  end

  # Print the board
  def show_board
    count = 0
    puts ''
    @board.each do
      last = count % 3
      if count == 8
        puts " #{@board[count]}"
        break
      end
      print last == 2 ? " #{@board[count]}\n------------\n" : " #{@board[count]} |"
      count += 1
    end
    puts ''
  end

  # Change a cell on the board
  def change_board(spot, symbol)
    'WARNING: Tried to change taken spot, time to debug.' unless @board[spot] == ' '
    @board[spot] = symbol
  end

  def check_cell(num)
    @board[num]
  end
end
