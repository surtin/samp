# Christopher Snelling
# WarGame Project
# Due Date: 02/28/14
# Submission Date: 03/13/14

require './cards'

class Deck
  
  def initialize
    @cards = [ ]
    for rank in 2..14
      for suit in ['C', 'D', 'H', 'S']
        # create a new card with the specified rank and suit 
        # and append it to the array.   
        @cards << Card.new(rank, suit)
      end
    end
  end
  
  def deal
    @cards.pop
  end
  
  def add_to_top(the_card)
    @cards.push(the_card)
  end
  
  def add_to_bottom(the_card)
    @cards.insert(0, the_card)
  end
  
  def count
    @cards.count
  end
  
  def empty?
    @cards.empty?
  end
  
  def shuffle!
    @cards.shuffle!
  end

  def to_s
    output = " "
    count = 1
    for card in @cards
      output += card.to_s + " "
      if count % 13 == 0
        output += "\n"
      end
      count += 1
    end
    output
    end

end