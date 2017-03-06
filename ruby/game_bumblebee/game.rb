class Game

attr_accessor :word, :underline, :guess_count, :total_guesses, :result

	def initialize(word)
		@word = word
		@underline = "_" * @word.length
		@guess_count = 0
		@total_guesses = @word.length
		@indeces = []
		@result = {}
	end

	def build_legend
    counter = 0
    @word.chars.each do |char|
        @result[counter] = char
        counter += 1
    end
    @result 
  end

	def find_index(letter)
		@indeces = []
		counter = 0
		build_legend
		until counter == @word.length
			@result.each do |key, value|
				if value == letter
						@indeces << key
						counter += 1
				else
					counter += 1
				end
			end
			return @indeces
	end
	end	

	def switch(letter)
		number = find_index(letter)
			number.each {|letter_index| @underline[letter_index]=letter}
			@underline
	end

end

## User Interface --------------------------------------------------------------------------------------------------------------
require 'io/console'
puts "enter the word you'd like user 2 to Guess:"
				word = gets.chomp
game = Game.new(word)
letters_guessed = []
until game.guess_count == game.total_guesses || game.underline == game.word

p letters_guessed
puts game.underline
puts "challanger, guess the word one letter at a time:"
				letter = gets.chomp
				letters_guessed << letter
game.find_index(letter)
	if game.find_index(letter) != []
			game.switch(letter)
	else
		game.guess_count += 1
	end
end

if game.underline == game.word
	puts "way to go you solved the problem!"
	puts game.word
elsif 
	puts "You lose! try again"
	puts game.word
end






		












