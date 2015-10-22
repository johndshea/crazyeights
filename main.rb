require_relative 'deck'
require_relative 'player'
require 'pry'
puts "🃅"
puts "\u1F0C5"

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

binding.pry

class Menu < Player
  def initialize
    puts "1. New game!"
    puts "2. Quit"
    print "Option: "
    $stdout.flush

    case gets().strip()
      when "1"
        puts "Starting new game!"

        #create new deck and shuffle
        deck = Deck.new
        deck.shuffle
        puts deck.inspect

        #deal 8 cards to each players
        player1 = Player.new
        player2 = Player.new
        player1.draw(deck, 8)
        player2.draw(deck, 8)
        puts player1.inspect, player2.inspect


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
