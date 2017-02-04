# define the method fake_name(first_name, last_name) then puts the last_name before the first_name then we want to iterate through each letter swapping the vowels to the next vowel in the string aeiou and everything other than the vowels to the next consonant in ther alphabet

def fake_name(first_name, last_name)
	reverse = "last_name + first_name"
	puts reverse.chars 
	reverse.map! do |letter|
		puts letter
		letter.next
		if 
			letter == [a, e, i, o, u]
			
			
		end
	end
