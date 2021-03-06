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
  def test_that_guesses_start
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

#test current card is the first card in the deck round.current_card
  def test_current_card_is_first_in_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end
# test the guesses are recorded using a guess, the value and suit of the card and the response (interpolated value and suit)
  def test_guess_is_recorded
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess({value: "3", suit: "Hearts"})
    assert_equal "3 of Hearts", guess.response
  end
#test the guesses are being counted round.guesses.count
  def test_the_guess_is_counted
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 1, round.guesses.count
  end
# test it gives correct feedback for correct guess
  def test_feedback_for_correct_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal "Correct!", round.guesses.first.feedback
  end

#test it counts correct guesses
  def test_it_counts_correct_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 1, round.number_correct
  end

#test it changes card after correct guess
  def test_card_changes_after_correct_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal card_2, round.current_card
  end

#test it records next guess
  def test_next_guess_is_recorded
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal "Jack of Diamonds", guess.response
  end

#test it counts the next guess
  def test_it_counts_next_guess
     card_1 = Card.new("3", "Hearts")
     card_2 = Card.new("4", "Clubs")
     deck = Deck.new([card_1, card_2])
     round = Round.new(deck)
     guess = round.record_guess({value: "3", suit: "Hearts"})
     guess = round.record_guess({value: "Jack", suit: "Diamonds"})
     assert_equal 2, round.guesses.count
  end
#test last feedback is "Incorrect." at end
  def test_last_feedback_is_incorrect
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess({value: "3", suit: "Hearts"})
    guess = round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal "Incorrect.", round.guesses.last.feedback
  end

# test number guesses correct in round
  def test_the_number_of_correct_guesses
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess({value: "3", suit: "Hearts"})
    guess = round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal 1, round.number_correct
  end

# test percentage correct
  def test_the_percentage_of_correct_answers
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    guess = round.record_guess({value: "3", suit: "Hearts"})
    guess = round.record_guess({value: "Jack", suit: "Diamonds"})
    assert_equal 50, round.percent_correct
  end
end
