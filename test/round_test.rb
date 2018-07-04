#Starts test
require 'minitest/autorun'
require 'minitest/pride'
#require card, guess, deck and round file

require './lib/round.rb'
require './lib/guess.rb'
require './lib/card.rb'
require './lib/deck.rb'

# create RoundTestClass
class RoundTest < Minitest::Test

#test that the round class exists
  def test_that_the_round_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Round, round
  end
#test that it holds a deck round.deck
  def test_that_the_round_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Deck, round.deck
  end

#test guesses start at [] round.guesses
  def test_that_the_round_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

#test current card is the first card in the deck

#test guess is recorded round.record_guess({value: "3", suit: "Hearts"})

#test the guesses are being counted round.guesses.count

# test it gives correct feedback for correct guess

#test it counts correct guesses

#test it changes card after guess

#test it records incorrect guess

#test final feedback is "incorrect" at end

# test number guesses correct in round

# test percentage correct
end
