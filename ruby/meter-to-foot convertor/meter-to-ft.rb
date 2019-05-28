# Convert from Meters to Feet and Inches
#  The program should repeatedly input a length in meters
#  and then print that length in feet and inches.

STDOUT.print 'Do you wish to input length in meters for conversion? '
more = gets.upcase

while(more[0] == 'Y')
  STDOUT.print 'Enter length in meters: '
  meter = gets.to_f
  f = meter * 3.28084
  feet = f.to_i
  inches = (12.0 * (f - feet)).round

  print 'The length is '
  if feet == 1
    STDOUT.print feet.to_s + ' foot '
  else
    STDOUT.print feet.to_s + ' feet '
  end
  
  if inches == 1
    STDOUT.print inches.to_s + " inch.\n"
  elsif (inches > 1)
    STDOUT.print inches.to_s + " inches.\n"
  else
    STDOUT.print ".\n"
  end

  STDOUT.print 'Do you wish to input another length in meters? '
  more = gets.upcase
end