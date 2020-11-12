# file game.rb

require_relative 'board'
# Game class make the board as well as keep track of the game
class Game
  WINNING_COMBO = [[0, 1, 2], [0, 4, 8], [0, 3, 6], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]].freeze
  @@game_count = 0
  def initialize(player_one, player_two)
    @board = Board.new
    @player_one = player_one
    @player_two = player_two
    @@game_count += 1
  end

  def start
    puts "\n~~STARTING GAME~~"
    puts ''
    show_players
    @board.show_board
  end

  def show_game_count
    @@game_count
  end

  def show_players
    puts "#{@player_one.name} : #{@player_one.symbol}"
    puts "#{@player_two.name} : #{@player_two.symbol}"
  end
end
