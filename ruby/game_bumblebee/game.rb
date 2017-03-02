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

	# def guess_letter(letter)
	# 	if @word.include?(letter)
	# 		find_index(letter)
	# 	end
	# end

	def build_legend
    counter = 0
    @word.chars.each do |char|
        @result[counter] = char
        counter += 1
    end
    @result 
  end

  # def add_correct(letter)
# 		find_index(letter)
# 		@underline.chars  
# 	end

	def find_index(letter)
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


game = Game.new('elephant')

p game.build_legend
p game.find_index('e')









