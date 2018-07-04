#Starts test
require 'minitest/autorun'
require 'minitest/pride'
#Require card file to run tests
require './lib/card.rb'
#create class for CardTest
class CardTest < Minitest::Test
  #test that the card is a card
  # def test_card_exists
  #   card = Card.new("Ace", "Spade")
  #   assert_instance_of Card, card
  # end
  #test it has a value (card.value)
  def test_it_has_a_value
   card = Card.new("Ace", "Spades")
   assert_equal "Ace", card.value
  end
  #test it has a suit (card.suit)
  def test_it_has_a_suit
    card = Card.new("Ace", "Spades")
    assert_equal "Ace", card.suit
  end
end
