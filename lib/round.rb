require 'pry'
#create class
class Round
#allow test to read variables
attr_reader :deck, :guesses, :number_correct
#initialize method and create instance variables for...?
  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
  end

  #define current card
  #change index status to the number of correct guesses to move through the deck?
  def current_card
    deck.cards[@number_correct]
  end

  #define record_guess, use hash to decide value and suit of guess (interpolation) and put each guess into the @guesses array
  def record_guess(response)
    guess = Guess.new("#{response[:value]} of #{response[:suit]}", current_card)
    @guesses << guess
      # don't need feedback here, test is pulling from guess...
      # if the guess is correct it adds 1 to the @number_correct count
      if guess.correct?
         @number_correct += 1
      end

      #move to the next card after correct guess
      #I have an array of a deck of cards, each time there is a correct guess I want to move to the next card in that array.

    guess
  end
  def percent_correct
    (@number_correct.to_f/@guesses.count.to_f) *100
  end

end
