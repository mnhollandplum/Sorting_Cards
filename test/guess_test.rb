#runs guess test
require 'minitest/autorun'
require 'minitest/pride'
#require card and guess file
require './lib/card.rb'
require './lib/guess.rb'
# create GuessTest class
class GuessTest < Minitest::Test
#test there is a guess card
  def test_the_guess_exists
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end
#test that there is a response
  def test_the_response
    card = Card.new("Ace", "Spades")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "10 of Hearts", guess.response
  end
#test that the response is correct and the feedback is "Correct!"
  def guess_correct?
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal true, guess.correct?
    assert_equal "Correct!", guess.feedback
  end
#test that the response is incorrect and the feedback is "Incorrect."
  def guess_incorrect?
    card = Card.new("Queen", "Clubs")
    guess = Guess.new("2 of Diamonds", card)
    assert_equal false, guess.correct?
    assert_equal "Incorrect.", guess.feedback
  end
end
