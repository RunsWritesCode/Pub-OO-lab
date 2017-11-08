class Drink

attr_reader :name, :price, :alcohol_level
attr_accessor :quantity

def initialize(name, price, alcohol_level, quantity)
	@name = name
	@price = price
	@alcohol_level = alcohol_level
	@quantity = quantity
end

	def decrease_quantity(amount)
		@quantity - amount
	end


end