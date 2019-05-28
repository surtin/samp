# Christopher Snelling
# Deck (part of Card) script
# Due Date: 
# Submission Date:

require './cards'

class Deck
  
  def initialize
    @cards = [ ]
    for rank in 2..14
      for suit in %w(C, D, H, S)
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
    output = ' '
    for i in 0..(@cards.length - 1)
      # Concatenate all of the cards to the output variable
      output += @cards[i].to_s + ' '
    end
    output
  end

end