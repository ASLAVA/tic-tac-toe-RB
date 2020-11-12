# file: board.rb

# Class to make the board
class Board
  def initialize
    @board = Array.new(9, ' ')
    show_board
  end

  def show_board
    count = 0
    @board.each do
      last = count % 3
      print last == 2 ? "\n------------\n" : " #{@board[count]} |"
      count += 1
      break if count == 8
    end
    puts ''
  end
end
