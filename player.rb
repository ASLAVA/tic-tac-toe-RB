# file player.rb

# Player class to make a player with access to name and symbol
class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end
