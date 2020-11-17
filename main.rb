# file main.rb

require_relative 'player'
require_relative 'game'

def play_game
  puts "\n~~STARTING GAME~~"
  puts 'Player One.'
  puts 'Please enter your name: '
  name = gets.chomp
  puts 'Player Two.'
  puts 'Please enter your name: '
  name_two = gets.chomp
  sym = rand(1..100)
  human = Player.new(name, sym <= 50 ? 'X' : 'O')
  computer = Player.new(name_two, sym <= 50 ? 'O' : 'X')
  game_session = Game.new(human, computer)
  game_session.start
end

def main
  puts "\n\t\t T | I | C "
  puts "\t\t T | A | C "
  puts "\t\t T | O | E "
  puts "\n   Welcome to TIC-TAC-TOE by Slava Agarkov"
  loop do
    puts "\nWould you like to play?"
    puts 'Yes/Quit'
    answer = gets.chomp.downcase
    if %w[quit q].include?(answer)
      puts 'Thank you for playing!'
      break
    elsif %w[yes y].include?(answer)
      play_game
    else
      puts 'Please enter a proper input (Yes/Quit)'
    end
  end
end

# run main
main
