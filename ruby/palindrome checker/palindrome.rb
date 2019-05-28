# Check to see if an input string is a palindrome
# orig is the original string,
# processed is the string after removing all characters
# that are not letters and converting to upper case.

print "Enter a string:"
orig = gets.chomp
processed = ""
for i in 0..orig.length
  letter = orig[i]
  if ("ABCDEFGHIJKLMNOPQRSTUWXYZ").index(letter.upcase)
    processed += letter.upcase;
  end
        
  if processed.length > 0
    left = 0;
    right = processed.length - 1
    while (left < right)
      if processed[left] != processed[right]
        print "String is not a palindrome."
        exit
      end
      left += 1
      right -= 1
    end
  end
  print "String is a palindrome."
end