class Guess
#allow guess_test file to read what makes up a guess
  attr_reader :response,
              :card
#define what makes a guess
  def initialize(response, card)
    @response = response
    @card     = card
  end
#define what is required for a correct response using hashes
  def correct?
    @response == "#{card.value} of #{card.suit}"
  end
#define what to do if response is correct? and else
  def feedback
    if correct? 
      "Correct!"
    else
      "Incorrect."
    end
  end

end
