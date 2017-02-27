# Take a first and last name as two parameters swap and assign a new variable
# make a sipher hash for the vowels to move to the next and a sipher hash for the consonants that must skip a letter
# use .include? to identify if the iterated character is a vowel or one of the unique consonants and if so change the letter accordingly, else do a .next on the iterated character
# do a unique case for capitalized letters and spaces stay the same 

def next_vowel(letter)
	cipher = {'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' =>'u', 'u' => 'a', 'A' => 'E', 'E' => 'I', 'I' => 'O', 'O' => 'U', 'U' => 'A'}
	new_vowel = cipher[letter]
	new_vowel
end

def next_consonant(letter)
	cipher = {'z' => 'b', 'd' => 'f', 'h' => 'j', 'n' => 'p', 't' => 'v', 'Z' => 'B', 'D' => 'F', 'H' => 'J', 'N' => 'P', 'T' => 'V'}
	next_consonant = cipher[letter]
	next_consonant
end

def alias_manager(first_name, last_name)
	new_name = ""
	name = last_name + " " + first_name
	name.chars {|letter| 
		if ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'].include? letter
			new_name << next_vowel(letter)
		elsif ['z', 'Z', 'd', 'D', 'h', 'H', 'n', 'N', 't', 'T'].include? letter
			new_name << next_consonant(letter)
		elsif letter == " "
			new_name << letter = " "
		else
			new_name << letter.next
		end
}
new_name
end

p alias_manager('Felicia', "Torres")

#User Interface ----------------------------------------------------------------------------------------------------------------------------------

name = ""
loop do
	puts "Please enter your name, if you'd like to quit, type 'quit'."
			input = gets.chomp
		break if input == 'quit'
input_array = input.split(' ')
first_name = input_array[0]
last_name = input_array[1]

p alias_manager(first_name, last_name)
end


