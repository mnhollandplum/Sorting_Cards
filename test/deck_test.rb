#runs guess test
require 'minitest/autorun'
require 'minitest/pride'
#require card and guess file
require './lib/card.rb'
require './lib/deck.rb'
# create DeckTestClass
class DeckTest < Minitest::Test

 #test the deck has cards?
  def test_the_deck_has_cards
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])

    assert_equal [card_1, card_2, card_3], deck.cards
  end
 #test the deck can count
  def test_the_deck_can_count
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new ([card_1, card_2, card_3])
    assert_equal 3, deck.count
  end
end
