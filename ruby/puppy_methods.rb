class Puppy

	def initialize
		puts "initializing new puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end


	def speak(x)
		x.times do puts "Woof!"
		end
	end	


	def roll_over
		puts "rolls over"
	end


	def dog_years(x)
		age = (x * 7)
		p age
	end


	def howl_at_the(object)
		puts "Howlllll (#{object})!"
	end

end

# driver code ------------------------------------------------------------------------------------------------------------------------------------------------------------

 snoop = Puppy.new

 p snoop.fetch("ball")

snoop.speak(4)

snoop.roll_over

snoop.dog_years(3)

snoop.howl_at_the("moon")

# Class Fish ------------------------------------------------------------------------------------------------------------------------------------------------------------

class Dog

	def initialize(name, breed, hairstyle)
		@name = name
		@breed = breed
		@hair_style = hairstyle
	end

def fetch(toy)
	puts "#{@name} fetches the #{toy}."
	toy
end

def bark
	puts "rufff!!"
end

end

# Driver Code ------------------------------------------------------------------------------------------------------------------------------

count = 0
instances = []
loop do 
	instance = Dog.new('fido', 'doberman', 'shorthair')
	instances << instance
	count += 1
	break if count == 50
end

p instances

instances.each do |instance|
	instance.fetch('ball')
	instance.bark
end


# Another Class ------------------------------------------------------------------------------------------------------------------------------

class Fish
	
	def initialize(name)
		@name = name
	end

	def make_bubbles(x)
		x.times do 
			puts "oOoOoO"
		end

	end

	def swim_this_far(x)
		puts "#{@name} swam #{x} leagues"
	end

end

	instances = []
	50.times do |instance| 
		 instances << Fish.new(instance)
	end
p instances

instances.each do |index| 
	index.make_bubbles(3)
	index.swim_this_far(4)
end








