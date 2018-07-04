class Deck
  #allow other files to read cards
  attr_reader :cards
  #initialize Deck Class
  def initialize (cards)
    @cards = cards
  end
 #define count method
  def count
    @cards.count
  end
end
