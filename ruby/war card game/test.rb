# Christopher Snelling
# WarGame Project
# Due Date: 02/28/14
# Submission Date: 03/13/14

require './war-game.rb'

war = WarGame.new
print war, "\n"
10.times do
  print war, "\n"
  war.play
end

print "Winner NumPlays\n"
print "====== ========\n"
5.times do
  war = WarGame.new
  war.finish_game
  print " %3s %4d\n" %
            [war.winner, war.num_plays]
end