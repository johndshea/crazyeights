require_relative 'card'
require_relative 'deck'

class Deck
  attr_reader :cards
  attr_writer :cards
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

  def draw(howMany = 1)
    return cards.pop(howMany)
  end

  def shuffle
    @cards.shuffle!
  end

  def return(card_to_return)
    @cards.unshift(card_to_return)
  end
end

def deal(num)
   hand = []
   num.times { hand << @cards.shift }
   hand
 end

###


class Pile

  attr_reader :cards, :player

  def initialize
      @cards =[]
      puts "test"
  end

  def top_card
    @deck = deck
    @cards = Deck.draw
    puts "this is getting into the top_card"
    puts @cards
  end
end

# an array of @cards, starting as empty
# a method called top_card which tells you the card which is face up
# a method called validate_play which takes a card as a parameter, and returns true if it could be played on top of the pile
# a method called add which takes a card and adds it to the pile


# class Card
#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#     @name = "#{@rank} of #{@suit}"
#   end
# end
