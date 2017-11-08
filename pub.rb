class Pub
	attr_reader :name, :drinks, :foods
	attr_accessor :till

	def initialize(name, drinks, foods)
		@name = name
		@drinks = drinks || []
		@foods = foods || []
		@till = 0
		@drinks_quantity = 0
		@food_quantity = 0
		@stock_value = 0
	end

	def check_customer_age(customer)
		return true if customer.age >= 18 
		return false
	end

	def increase_money(amount)
		@till += amount
	end

	def drinks_quantity
		for drink in @drinks
			@drinks_quantity += drink.quantity
		end
		return @drinks_quantity
	end	

	def food_quantity
		for food in @foods
			@food_quantity += food.quantity
		end
		return @food_quantity
	end

	def stock_value
		total = 0
		for drink in @drinks
			total += drink.quantity * drink.price
		end
		for food in @foods
			total += food.quantity * food.price
		end
		return total
	end
end