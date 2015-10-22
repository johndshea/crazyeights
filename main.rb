require_relative 'deck'
require 'pry'

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

#binding.pry

class Menu < Player
  def initialize
    puts "1. New game!"
    puts "2. Quit"
    print "Option: "
    $stdout.flush

    case gets().strip()
      when "1"
        puts "Starting new game!"
        game = Player.new
        deck = Deck.new

        #create deck
        game.draw(deck, 8)

        #deal 8 cards to each players


        #somethine else.

      when "2"
        puts "Rage quitted."
        exit
      else
        puts "Invalid input, please enter correct input"

    end
  end
end

start = Menu.new
