class Deck
  RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  SUITS = ["Spades", "Hearts", "Clubs", "Diamonds"]
  def initialize
    @cards = RANKS.product(SUITS).shuffle
  end
  def draw(howMany)
    @cards[0][0], @cards[0][1]
  end
end

class Card
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @name = "#{@rank} of #{@suit}"
  end
end
