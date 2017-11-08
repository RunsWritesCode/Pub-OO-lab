class Food
	attr_reader :name, :price, :rejuvenation
	attr_accessor :quantity

	def initialize(name, price, rejuvenation, quantity)
		@name = name
		@price = price
		@rejuvenation = rejuvenation
		@quantity = quantity
	end
	
end