# define the method fake_name(first_name, last_name) then puts the last_name before the first_name then we want to iterate through each letter swapping the vowels to the next vowel in the string aeiou and everything other than the vowels to the next consonant in ther alphabet
#I can get the methods to work indivudually but I'm struggling to get them to work as a whole... I know I can't get help on this as a solo project but I will have to ask questions in office hours so I can better understand it after it is handed in

until quit == "quit"
puts "to quit the name changer type quit"
quit = gets.chomp
puts "first name:"
first_name = gets.chomp
puts "last name:"
last_name = gets.chomp




def fake_name(first_name, last_name)
	reverse = "last_name + first_name"
	puts reverse.chars 
	reverse.map! do |letter|
		puts letter
		if 
			letter.contain? ("bcdfghjklmnpqrstvwxyz")
			puts letter.next
			elsif 
				def next_vowel(letter)
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

				def letters(letter)
				vowels = ["a", "e", "i", "o", "u"]
						if vowels.include?(letter)
							 next_vowel(letter)
						elsif
								letter == " "
								puts " "
						elsif 
								letter == "-"
								puts "-"
						else
								puts letter.next
					end
			end

false_name = letters(letter) 
puts false_name
puts "#{false_name} is actually #{first_name + last_name}"		
		end
	end
puts fake_name(first_name, last_name)




# alphabet = "bcdfghjklmnpqrstvwxyz"
# def letters(x)
# 	vowels = ["a", "e", "i", "o", "u"]
# 	if vowels.include?(x)
# 		next_vowel(x)
# 		elsif
# 		x == " "
# 		puts " "
# 	else
# 		puts x.next
# 	end
# end

# end