class Card
#allow other files to read the value and suit
 attr_reader :value, :suit
 #create instance variables for value and suit
  def initialize (value, suit)
    @value = value
    @suit = suit
  end

  def value
    @value
  end

  def suit
    @suit
  end
end
