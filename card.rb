class Card
  attr_reader :rank
  attr_reader :suit
  attr_reader :image
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @name = "#{@rank} of #{@suit}"
    self.makeimage
  end
  def makeimage
    if @suit == "\u2660"
      @suitConversion = "A"
      elsif @suit == "\u2665"
        @suitConversion = "B"
      elsif @suit == "\u2666"
        @suitConversion = "C"
      elsif @suit == "\u2663"
        @suitConversion = "D"
    end
    if @rank == "A"
      @rankConversion = "1"
      elsif @rank == "10"
        @rankConversion = "A"
      elsif @rank == "J"
        @rankConversion = "B"
      elsif @rank == "Q"
        @rankConversion = "D"
      elsif @rank == "K"
        @rankConversion = "E"
      else
        @rankConversion = @rank
    end
    puts @suitConversion
    puts @rankConversion
    #this displays the UTF character code for this particular card. Doesn't display properly though.
    @image = "u1F0#{@suitConversion}#{@rankConversion}"
  end
end
