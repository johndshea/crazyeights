class Deck
  attr_reader :cards
  RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  SUITS = ["Spades", "Hearts", "Clubs", "Diamonds"]
  def initialize
    @cards = []

    RANKS.each do |rank|
      SUITS.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
    @cards.shuffle!
  end
  def draw
    
  end
end

class Card
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @name = "#{@rank} of #{@suit}"
  end
end

# @cards = RANKS.product(SUITS).shuffle
# def draw(howMany)
#   @cards[0][0], @cards[0][1]
# end
