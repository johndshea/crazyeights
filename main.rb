class Player
  def initialize
    @cards = []
  end
end

class Menu
  def initialize
    puts "1. New game!"
    puts "2. Quit"
    gets option
    print "Option: "
    if option == 1
      puts "starting new game..."
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
