class Spaceship

attr_accessor :name, :tractor_beam
attr_reader :max_speed

	def initialize(name, max_speed)
		@name = name
		@max_speed = max_speed
		@location = ""
		@tractor_beam = {}
	end

	def warp_to(location)
		p "Traveling at #{@max_speed} to #{location}!"
	@location = location
	end

	def beam(item)
		final_sum = 0
		sum = []
				item.chars.each do |letter|
				sum	<<letter.ord
			end
			final_sum = sum.inject(0) {|sum, n| sum += n }
		if final_sum > 500 
			puts "too heavy to pick up"
		else
			puts "Sheild disabled"
			puts "picking up the #{item}"
		end
		
	end

	def pickup(item, location)
		warp_to(location)
		beam(item)
	end

	def print_inventory
		@tractor_beam.each do |key, value| puts "a #{key} from #{value}."
		end
	end
end

USS_Enterprise = Spaceship.new("USS Enterprise", 200000)
p USS_Enterprise
HMS_Andromeda = Spaceship.new("HMS Andromeda", 108277)
p HMS_Andromeda

USS_Enterprise.name = "USA Enterprise"
p USS_Enterprise
p HMS_Andromeda.max_speed

USS_Enterprise.warp_to("Namibia")
p USS_Enterprise

USS_Enterprise.beam("cow")
p @tractor_beam

p USS_Enterprise.pickup("Elephant", "Mumbai")
p USS_Enterprise.pickup("fox", "Bordua")
p USS_Enterprise.pickup("snake", "Delusia")

p USS_Enterprise.print_inventory



