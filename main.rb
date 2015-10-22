require_relative 'deck'
require_relative 'player'
require 'pry'

binding.pry

class Menu
  def initialize

    option = nil

    puts "1. New game!"
    puts "2. Quit"
    print "Option: "
    $stdout.flush
    option = gets option
    if option == 1
      puts "starting new game..."
      game = Player.new
      game.initialize
      #do something... like maybe...
      #1. deal the cards to player and/or dealer
      #2. draw card from pile...
      #3. select card from deck... etc

    elsif option == 2
      puts "quitting..."
      #quit the game

    else
      print "invalid option"

    end
  end
end

a = Menu.new

print a
