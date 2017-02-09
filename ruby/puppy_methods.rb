class Puppy

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
		puts "Howlllll #{object}!"
	end

	def initialize
		puts "initializing new puppy instance..."
	end
end


 snoop = Puppy.new

 p snoop.fetch("ball")

snoop.speak(4)

snoop.roll_over

snoop.dog_years(3)

snoop.howl_at_the("moon")

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








