class Word_guess

	def initialize(word) 
		@word = word
		@number_of_guesses = 0
		@guesses = []
	end

	def converter
		guesser = []
		@word.chars.each {|letter|
		guesser << letter.replace("_")}
		guesser
	end

	def number_of_guesses(word)
		number = @word.length
	end

	def guess_storage(letter)
		if 
			@guesses.include?(letter)
			puts "already guessed"
		else
			@guesses << letter
		end
	@number_of_guesses = @guesses.length
	p @number_of_guesses
	end 

	def right_answer(letter)
			@word.chars.map! {
				|char| 
			if 
				char.include?(letter) 
				puts char
			else
				puts "_"
				@number_of_guesses += 1
			end
		puts 
			}
	end

end

puts "enter a word to be guessed:"
 word = gets.chomp

game = Word_guess.new(word)

p game.converter

until (@number_of_guesses == word.length) 
puts "guess a letter:"
letter = gets.chomp
p game.right_answer(letter)
p game.guess_storage(letter)
end



