# Christopher Snelling
# WarGame Project
# Due Date: 02/28/14
# Submission Date: 03/13/14

require './downstack'

class WarGame

  def initialize
    orig_deck    = Deck.new
    @player_a    = DownStack.new
    @player_b    = DownStack.new
    @limbo_stack = DownStack.new
    @num_plays   = 0

    # Shuffle
    (1..7).each do
      orig_deck.shuffle!
    end

    # Dealing
    (1..26).each do
      @player_a.add_to_top orig_deck.deal
      @player_b.add_to_top orig_deck.deal
    end
  end

  def num_plays
    @num_plays
  end

  def winner
    if @player_b.count == 0
      'A'
    elsif @player_a.count == 0
      'B'
    else
      nil
    end
  end

=begin
Each player draws the top card from his or her down stack. (Use the deal method of DownStack to obtain the card.) The card with the higher rank wins. Both cards are added to the bottom of the winning player's down stack along with any cards in the limbo stack, as described in Rule 5. Use the add_to_bottom and deal methods to move cards from the limbo deck to the player's down stack like this:

              until @limbo_stack.is_empty?
                  @player_a.add_to_bottom @limbo_stack.deal
              end

In case there is a tie for the rank, each player places the card with tied rank, along with three additional cards into the "in limbo" stack. Then they play again (Rules 4 and 5).
=end

  def play
    @num_plays += 1

    card_a = @player_a.deal
    card_b = @player_b.deal

    if card_a.rank > card_b.rank
      @player_a.add_to_bottom card_b
      @player_a.add_to_bottom card_a
      if winner != nil
        winner
      end
      until @limbo_stack.empty?
        @player_a.add_to_bottom @limbo_stack.deal
      end
    elsif card_a.rank < card_b.rank
      @player_b.add_to_bottom card_a
      @player_b.add_to_bottom card_a
      if winner != nil
        winner
      end
      until @limbo_stack.empty?
        @player_b.add_to_bottom @limbo_stack.deal
      end
    else
      @limbo_stack.add_to_bottom card_a
      @limbo_stack.add_to_bottom card_b
      3.times do
        @limbo_stack.add_to_bottom @player_a.deal
        if winner != nil
          winner
        end
        @limbo_stack.add_to_bottom @player_b.deal
        if winner != nil
          winner
        end
      end
    end
  end

  def finish_game
    while winner == nil && num_plays < 5000
      play
    end
  end

  def to_s
    "Number of plays: #{num_plays}\nPlayer A count: #{@player_a.count}\n#{@player_a}\nPlayer B count: #{@player_b.count}\n#{@player_b}\nLimbo Stack Count: #{@limbo_stack.count}\n#{@limbo_stack}"
  end
end