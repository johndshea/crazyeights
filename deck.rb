require_relative 'card'

class Deck
  attr_reader :cards
  attr_writer :cards
  RANKS = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  SUITS = ["\u2660", "\u2665", "\u2663", "\u2666"]
  # SUITS = ["Spades", "Hearts", "Clubs", "Diamonds"]
  def initialize
    @cards = []

    RANKS.each do |rank|
      SUITS.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
    @cards.shuffle!
  end
  def draw(howMany = 1)
    return @cards.pop(howMany)
  end
  def shuffle
    @cards.shuffle!
  end
  def return(card_to_return)
    @cards.unshift(card_to_return)
  end
end

# class Card
#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#     @name = "#{@rank} of #{@suit}"
#   end
# end
