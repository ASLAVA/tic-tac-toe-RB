# file game.rb

require_relative 'board'
# Game class make the board as well as keep track of the game
class Game
  WINNING_COMBO = [[0, 1, 2], [0, 4, 8], [0, 3, 6], [1, 4, 7], [2, 4, 6], [2, 5, 8], [3, 4, 5], [6, 7, 8]].freeze
  def initialize(player_one, player_two)
    @board = Board.new
    @player_one = player_one
    @player_two = player_two
  end

  def start
    puts ''
    show_players
    @board.show_board
    @turn = @player_one.symbol == 'X' ? @player_one : @player_two
    play
  end

  def play
    puts "\n#{@turn.name}\'s turn"
    players_choice = ''
    loop do
      puts "\nPlease enter a valid cell number (1-9) to add your symbol, or enter Help for further assistance"
      players_choice = gets.chomp.downcase
      # NEED TO ADD BETTER INPUT CHECKelsif %w[help h].include?(answer)
      if %w[h help].include?(players_choice)
        help_guide
      elsif (1..9).include?(players_choice.to_i)
        players_choice = players_choice.to_i - 1
        @board.check_cell(players_choice) == ' ' ? break : ''
      end
    end
    @turn.add_sym(players_choice)
    @board.change_board(players_choice, @turn.symbol)
    @board.show_board
    if check_win
      puts "Game Over! #{@turn.name} Wins!"
      puts '~~ENDING GAME~~'
      return
    end
    @turn = @turn == @player_one ? @player_two : @player_one
    play
  end

  def show_game_count
    @@game_count
  end

  def show_players
    puts "#{@player_one.name} : #{@player_one.symbol}"
    puts "#{@player_two.name} : #{@player_two.symbol}"
  end

  def check_win
    positions = @turn.symbol_loc
    # print "#{positions}\n"
    # check if any of the winning combinations are present
    WINNING_COMBO.each do |combo|
      return true if (combo - positions).empty?
    end
    false
  end

  def help_guide
    puts "\n\t T | I | C\t 1 | 2 | 3 "
    puts "\t T | A | C\t 4 | 5 | 6 "
    puts "\t T | O | E\t 7 | 8 | 9 "
    puts "\n\t   Welcome to HELP GUIDE"
    puts "\tWhen the game starts, you will be asked for the name of the two players."
    puts "\tPlease enter yours and your apponents name any way you want."
    puts "\tThe game will auto-pick who is assigned X and who is assigned O."
    puts "\tX always goes first."
    puts "\tWhen it's your turn you would be asked to enter 1-9 in order to put your mark in."
    puts "\tYou cannot put your mark into a space taken by your apponent."
    puts "\tGame ends in a WIN when a player places his marks in 3 in a horizontal, vertical, or diagonal row."
    puts "\n\t X | O |  \t X |   | X "
    puts "\t O | X |  \t O | O | O "
    puts "\t   | O | X\t   | X | X "
    puts "\n\tGame ends in a TIE when all spaces are taken without a WIN condition."
    puts "\n\t X | X | O\t O | X | O "
    puts "\t O | O | X\t X | X | O "
    puts "\t X | O | X\t X | O | X "
  end
end
