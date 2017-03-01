class Santa

attr_reader :ethnicity
attr_accessor :gender, :age, :reindeer_ranking

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancerd", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140)
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(name)
		index = @reindeer_ranking.index(name)
		@reindeer_ranking = @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(index))
	end

	def gender=(gender)
		@gender = gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end
end
	## Driver code -----------------------------------------------------------------------------------------------------------------------------

# 	santas = []
# 	santas << Santa.new("agender", "black")
# 	santas << Santa.new("female", "Latino")
# 	santas << Santa.new("bigender", "white")
# 	santas << Santa.new("male", "Japanese")
# 	santas << Santa.new("female", "prefer not to say")
# 	santas << Santa.new("gender fluid", "mystical creature (unicorn)")
# 	santas << Santa.new("N/A", "N/A")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "mystical dragon"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "halfling"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "mystical dragon"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "halfling"]

100.times do |i|
	santas << Santa.new(example_genders.sample[i], example_ethnicities.sample[i])
end

p santas
