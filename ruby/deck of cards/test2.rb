require "test/unit"

require "./cards"
require "./decks"

class TestDecks < Test::Unit::TestCase
  def test_decks
    test1 = Card.new(12, 'S')
    assert_equal(12, test1.rank)
    assert_equal('S', test1.suit)
    assert_equal('QS', test1.to_s)
  end

  def test2
    d = Deck.new
    assert_equal(true, d.deal)
    assert_equal(['6D', '2C', '2D', '2H', '2S', '3C', '3D', '3H', '3S', '4C', '4D', '4H', '4S', '5C', '5D', '5H', '5S', '6C', '6D', '6H', '6S', '7C', '7D', '7H', '7S', '8C', '8D', '8H', '8S', '9C', '9D', '9H', '9S', '10C', '10D', '10H', '10S', 'JC', 'JD', 'JH', 'JS', 'QC', 'QD', 'QH', 'QS', 'KC', 'KD', 'KH', 'KS', 'AC', 'AD', 'AH', 'AS'], d.add_to_bottom('6D'))
    assert_equal(['2C', '2D', '2H', '2S', '3C', '3D', '3H', '3S', '4C', '4D', '4H', '4S', '5C', '5D', '5H', '5S', '6C', '6D', '6H', '6S', '7C', '7D', '7H', '7S', '8C', '8D', '8H', '8S', '9C', '9D', '9H', '9S', '10C', '10D', '10H', '10S', 'JC', 'JD', 'JH', 'JS', 'QC', 'QD', 'QH', 'QS', 'KC', 'KD', 'KH', 'KS', 'AC', 'AD', 'AH', 'AS', '6D'], d.add_to_top('6D'))
    assert_equal(false, d.empty?)
    assert_equal(52, d.count)
  end

end