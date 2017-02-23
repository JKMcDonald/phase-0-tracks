class Item
	attr_reader :name, :color, :price

	def initialize(name, color, price)
		@name = name
		@color = color
		@price = price
	end

	def to_s
	end
end

item = Item.new("Cardboard box", "blue", 0)
