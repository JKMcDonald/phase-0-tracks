class Dancer

attr_reader :name
attr_accessor :age, :card, :tutu_color

	def initialize(name, age)
		@name = name
		@age = age
		@card = []
		@second_card = []
		@tutu_color = 'blue'
	end

	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end

	def queue_dance_with(dancer)
		@card << dancer
		@card
	end

	def begin_next_dance
		"Now dancing with #{@card.delete_at(0)}."
	end

	def change_tutu(color)
		@tutu_color = color
		@tutu_color
	end

	# def full_card

	# end

		
end