require_relative "room"
require_relative "item"


class House
	attr_reader :rooms

	def initialize
		@rooms = []
	end

	def add_room(room)
		if @rooms.length < 11
			@rooms << room
			true
		else
			false
		end
	end

	def total_value
		value = 0
		@rooms.each do |room|
			value += room.total_value
		end
		value
	end
	def to_s
		house_str = ""
		@rooms.each do |room|
			house_str << room.to_s
			house_str << "\n"
			rooms.items.each do |item|
				house_str << item.to_s
				house_str << "\n"
			end
			house_str << "\n"
		end
		house_str	
	end
end