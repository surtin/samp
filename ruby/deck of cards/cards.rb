# Christopher Snelling
# Card script
# Due Date: 
# Submission Date:

class Card

  attr_reader :rank, :suit

  # let's initiliaze
  def initialize(the_rank, the_suit)
    @rank = the_rank
    @suit = the_suit
    @symbols = [nil, nil, '2', '3', '4', '5', '6', '7',
                '8', '9', '10', 'J', 'Q', 'K', 'A']
  end

  def rank
    return @rank
  end

  def suit
    return @suit
  end

  def to_s
    return "#{@symbols[@rank]}#{@suit}"
  end

end


  