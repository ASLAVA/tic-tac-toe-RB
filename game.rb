# file game.rb

require_relative 'board'
# Game class make the board as well as keep track of the game
class Game
  WINNING_COMBO = [[0, 1, 2], [0, 4, 8], [0, 3, 6], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]].freeze

  def initialize(_player_one, _player_two)
    board = Board.new
  end
end
