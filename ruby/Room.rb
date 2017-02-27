require_relative "item"

class Room
	attr_reader :length, :width
	attr_accessor :items, :name

def initialize(name, width, length)
	@name = name
	@width = width
	@length = length
	@items = []
end

def total_value
	total = 0
	@items.each do |item|
		total += item.price
	end
	total
end

def to_s
	 "#{@name} (#{width} x #{length})"
	end
end

living_room = Room.new("living room", 20, 35)
puts living_room
piano = Item.new("Piano", "black", "100000")