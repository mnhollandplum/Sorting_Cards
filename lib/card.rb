require 'pry'
class Card
#allow other files to read the value and suit
 attr_reader :value, :suit
 #create instance variables for value and suit
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def value
    @value
  end

  def suit
    @suit
  end
#change the suits into numerical values using keys (card suit) and values (numerical value assigned) to determine where they are in the sorted deck.
  def card_values
    assign_card_values = {"2" => 20, "3" => 30, "4" => 40, "5" => 50, "6" => 60, "7" => 70, "8" => 80, "9" => 90, "10" => 100, "Jack" => 110, "Queen" => 120, "King" => 130, "Ace" => 140, "Clubs" => 1, "Diamonds" => 2, "Hearts" => 3, "Spades" => 4}
    card_values = assign_card_value[@value] + assign_card_value[@suit]
    card_values

  end

end
