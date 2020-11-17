# file player.rb

# Player class to make a player with access to name and symbol
class Player
  attr_reader :name, :symbol, :symbol_loc

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @symbol_loc = []
  end

  def add_sym(sym)
    @symbol_loc.push(sym)
  end
end
