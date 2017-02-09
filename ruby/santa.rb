class Santa

	attr_accessor :name, :gender, :ethnicity

	def initialize(name, gender, ethnicity)
		p "initializing Santa instance..."
		@name = name
		@gender = gender
		@ethnicity = ethnicity
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age = 0
	end
	

	def speak
		puts "Ho, ho, ho! Haaaaappy Holidays!"
	end

	def eat_milk_and_cookies(cookie)
			puts "That was a good #{cookie}!"
	end


	def celebrate_birthday
		age +=1
		age
	end
	
	def get_mad_at
		reindeer_ranking.rotate
	end

end



smelly = Santa.new("bob","white", "irish")

smelly.speak
smelly.eat_milk_and_cookies("snickerdoodle")
smelly.gender=("female")
p smelly.gender



santas = []
example_names = ["bill", "tom", "phil", "Larry", "Al", "Hal", "Doug"]
example_genders = ["Agender", "bigender", "female", "male", "Unicorn", "N/A", "PREFER-NOT-TO-ANSWER"]
example_ethnicities = ["black", "White", "Orange", "Latino", "Jamaican-mon", "West-side" "East-side"]
example_genders.length.times do |i|
santas << Santa.new(example_names[i], example_genders[i], example_ethnicities[i])
p santas
end

santacon_creator = []
100.times do |i|
	santacon_creator << Santa.new(example_names.sample, example_genders.sample, example_ethnicities.sample)
p santacon_creator
end
