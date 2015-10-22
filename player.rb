class Player
  attr_reader :cards
  attr_writer :cards
  def initialize
    @cards = []
  end
  def draw(deck, howMany)
    deck.draw(howMany).each do |card|
      @cards << card
    end
  end
end
