require "./cards"
require "./decks"

c1 = Card.new(6, 'S')
print c1.suit, " ", c1.rank, "\n"

print c1, "\n"

d1 = Deck.new
print d1, "\n"

c2 = d1.deal
print c2, "\n"

# d1.add_to_top('6D')
# print d1, "\n"
# 
# d1.add_to_bottom('6D')
# print d1, "\n"
# 
d1.count
print d1, "\n"
# 
# d1.empty?
# print d1, "\n"
# 
# d1.shuffle!
# print d1, "\n"
