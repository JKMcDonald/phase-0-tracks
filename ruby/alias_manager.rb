# define the method fake_name(first_name, last_name) then puts the last_name before the first_name then we want to iterate through each letter swapping the vowels to the next vowel in the string aeiou and everything other than the vowels to the next consonant in ther alphabet
#I can get the methods to work indivudually but I'm struggling to get them to work as a whole... I know I can't get help on this as a solo project but I will have to ask questions in office hours so I can better understand it after it is handed in






def change_letter(reverse)
	new_array = []
	skip_vowel = {"z" => "b", "d" => "f", "h" => "j", "n" => "p", "t" => "v"}
	vowel_cipher = {"a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a"}
	reverse.downcase.chars.each do |letter|
		if vowel_cipher.has_key?(letter)
			letter = vowel_cipher[letter]
			new_array << letter
		elsif skip_vowel.has_key?(letter)
			letter = skip_vowel[letter]
			new_array << letter
		elsif letter == " "
			letter = " "
			new_array << letter
		elsif letter == "-"
			letter = "-"
			new_array << letter
		else
			letter = letter.next
			new_array << letter
		end
	end
	return new_array
end

p change_letter(" ")

def fake_name(first_name, last_name)
	reverse = last_name + " " + first_name
	new_array = change_letter(reverse)
	false_name = new_array.join
	puts false_name
	puts "#{false_name} is actually #{first_name} + #{last_name}."
end

fake_name("Ben", "Carson")


# quit = ""
# until quit == "quit"
# 	puts "to quit the name changer type quit"
# 	quit = gets.chomp
# 	puts "first name:"
# 	first_name = gets.chomp
# 	puts "last name:"
# 	last_name = gets.chomp

# 	fake_name(first_name, last_name)
# end

	




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