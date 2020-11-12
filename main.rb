# file main.rb

require_relative 'player'
require_relative 'game'

def play_game
  puts 'Please enter your name: '
  name = gets.chomp
  sym = rand(2)
  human = Player.new(name, sym == 0 ? 'X' : 'O')
  computer = Player.new('Computer', sym == 0 ? 'O' : 'X')
  game_session = Game.new(human, computer)
  game_session.start
  puts ''
  puts '~~ENDING SESSION~~'
end

def game
  loop do
    puts "\n Welcome to TIC-TAC-TOE by Slava Agarkov"
    puts "\n T | I | C "
    puts ' T | A | C '
    puts ' T | O | E '
    puts "\nWould you like to play?"
    puts 'Yes/Quit'
    answer = gets.chomp.downcase
    if %w[quit q].include?(answer)
      puts 'Thank you for playing!'
      break
    elsif %w[yes y].include?(answer)
      play_game
      break
    else
      puts 'Please enter a proper input (Yes/Quit)'
    end
  end
end

game
