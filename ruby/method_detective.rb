# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(2, "o")
#=> “zoom”

p "enhance".center("enhance".length + 8)
#=> "    enhance    "

p "Stop! You’re under arrest!".upcase
#=> "STOP! YOU’RE UNDER ARREST!"

p "the usual".insert(9, " suspects")
#=> "the usual suspects"

p " suspects".insert(0, "the usual")
#=> "the usual suspects"

p "The case of the disappearing last letter".slice!(0...-1)
#=> "The case of the disappearing last lette"

p "The mystery of the missing first letter".slice!(1..-1)
#=> "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".split.join(" ")
#=> "Elementary, my dear Watson!"

p "z".ord
#=> 122 
#(What is the significance of the number 122 in relation to the character z?)

p "How many times does the letter 'a' appear in this string?".count "a"
#=> 4