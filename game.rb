# Game class make the board as well as keep track of the game
require_relative 'board.rb'
require_relative 'player.rb'

class Game
  WINNING_COMBO = [[0,1,2], [0,4,8], [0,3,6], [1,4,7], [2,4,6], [2,5,8], [3,4,5], [6,7,8]]

  def initializer()
    board = Board.new()
  end
end

n = Game.new()