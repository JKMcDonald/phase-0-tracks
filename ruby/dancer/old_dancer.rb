class Dancer
	attr_reader(:card)
	attr_accessor(:name, :age)

	def initialize(name, age)
		@name = name
		@age = age
		@new_name = ""
		@card = []
		@tutu_color = ""
	end

	# def age=(value)
	# 	@age = value
	# end

	# def name=(value)
	# 	@name = value
	# end

	# def name
	# 	@name
	# end

	# def age
	# 	@age
	# end

	# def card
	# 	@card
	# end

	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end

	def queue_dance_with(new_name)
		#instance variables are data that is supposed to persist in your class
		@card << new_name
	end

	def begin_next_dance
		#return is immediate and exits the method with that value
		#implicit return, last evaluated expression in a method is the return of that method
		#return value
		current_dancer = @card.delete[0]
		"Now dancing with #{current_dancer}."
	end
 
	def tutu_color(tutu_color)
		@tutu_color = tutu_color
		@tutu_color
	end

end


dancer = Dancer.new('A', 2)
dancer.age = 10
dancer.name = 'bob'
p dancer
