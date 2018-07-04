require 'pry'
#create class
class Round
#allow test to read variables
attr_reader :deck, :guesses
#initialize method and create instance variables for...?
  def initialize(deck)
    @deck = deck
    @guesses = []

  end

  #define current card
  def current_card
    deck.cards[0]
  end


end
