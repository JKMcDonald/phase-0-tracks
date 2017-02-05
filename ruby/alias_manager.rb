# define the method fake_name(first_name, last_name) then puts the last_name before the first_name then we want to iterate through each letter swapping the vowels to the next vowel in the string aeiou and everything other than the vowels to the next consonant in ther alphabet

# def fake_name(first_name, last_name)
# 	reverse = "last_name + first_name"
# 	puts reverse.chars 
# 	reverse.map! do |letter|
# 		puts letter
# 		if 
# 			letter.contain? ("bcdfghjklmnpqrstvwxyz")
# 			puts letter.next
# 			elsif 
# 				letter
			
# 		end
# 	end

def next_vowel(x)
	if x == "a"
		puts "e"
	elsif 
		 x == "e"
		 puts  "i"
	elsif 
		 x == "i"
		 puts "o"
	elsif 
		 x == "o"
		 puts "u"
	else
		x == "u"
		puts "a"
end
end

vowels = ["a", "e", "i", "o", "u"]
alphabet = "bcdfghjklmnpqrstvwxyz"
def letters(x)
	if vowels.include?(x)
		next_vowel(x)
		elsif
		x == " "
		puts " "
	else
		puts x.next
	end
end

puts letters("a")
