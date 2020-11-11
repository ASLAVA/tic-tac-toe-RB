# Player class to make a player with access to name and symbol
class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def getName
    @name
  end

  def getSymbol
    @symbol
  end
end
