# Christopher Snelling
# WarGame Project
# Due Date: 02/28/14
# Submission Date: 03/13/14

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
    @rank
  end
  
  def suit
    @suit
  end
  
  def to_s
    "#{@symbols[@rank]}#{@suit}"
  end
  
end


  