class Spaceship

attr_accessor :name, :shield, :location
attr_reader :max_speed


	def initialize(name, max_speed)
		@name = name
		@max_speed = max_speed
		@shield = true
		@location = ""
		@inventory = {}
	end

	def disable_shield
		@shield = true
	end

	def enable_shield
		@shield = false
	end

	def warp_to(location)
		p "Traveling at #{@max_speed} to #{location}!"
		@location = location
	end

	def tractor_beam(item)
		if item_weight(item) <= 500
			disable_shield
		else
			enable_shield
		end
	end

	def item_weight(item)
		sum = 0
			item.chars.each do |i|
			sum += i.ord	
			end
		return sum
	end

	def pickup(item, location)
			@location = location
				if tractor_beam(item) == true
					@inventory[location] = item
				end
			tractor_beam(item)
	end

	def print_inventory
		printout = []
		@inventory.each do |location, item|
		printout << "#{@name} landed in #{location} and picked up #{item}."
		end
		puts "your inventory is as follows:"
		printout
	end

	def total_weight
		sum = 0
			@inventory.each do |key, value|
			sum += item_weight(value)
			end
		return sum
	end
		
end

# Driver Code ----------------------------------------------------------------------------------------------------------------------------------------------------------

USS = Spaceship.new('USS Enterprise', 200000)
HMS = Spaceship.new('HMS Andromeda', 108277)

USS.name = 'Enterprise'
p HMS.max_speed
USS.warp_to('Namibia')
p USS.location
p USS.item_weight('cow')
p USS.tractor_beam('cow')
p USS.item_weight('car')
p USS.item_weight('dog')
p USS.pickup('car', 'Nabu')
p USS.location
p USS.pickup('elephant', 'Grenada')
p USS.location
p USS.pickup('dog', 'Brazil')
p USS.print_inventory
p USS.total_weight























