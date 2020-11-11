# Game class make the board as well as keep track of the game
class Game

  WINNING_COMBO = [[0,1,2], [0,4,8], [0,3,6], [1,4,7], [2,4,6], [2,5,8], [3,4,5], [6,7,8]]

  def initialize()
    @board = Array.new(9, ' ')
    #showBoard()
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

n = Game.new()