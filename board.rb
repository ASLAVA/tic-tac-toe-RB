#Class to make the board
class Board
  def initialize()
    @board = Array.new(9, ' ')
    puts "here"
    showBoard()
  end

  def showBoard()
    count = 0
    @board.each do
      last = count%3
      print last==2? "\n------------\n" : " #{@board[count]} |" 
      count += 1
      break if count==8
    end
    puts ''
  end
end