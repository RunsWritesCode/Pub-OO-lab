class Customer
	attr_reader :name, :age
	attr_accessor :wallet, :drunkeness

	def initialize(name, age, wallet)
		@name = name
		@age = age
		@wallet = wallet
		@drunkeness = 0		
	end

	def decrease_money(amount)
		@wallet -= amount
	end

	def adjust_drunkeness(amount)
		@drunkeness += amount
	end

	def is_drunk?
		return false if @drunkeness <= 14 
		return true
	end

		def is_of_age?
		return true if @age >= 18
		return false
	end

	# def buy_drink(drink_name, pub)
	# 	if @age > 18 && @drunkeness <= 14
	# 		for drink in pub.drinks
	# 			if drink.name == drink_name
	# 				@wallet -= drink.price
	# 				@drunkeness += drink.alcohol_level
	# 				pub.till += drink.price
	# 			end
	# 		end
	# 	else
	# 		return false
	# 	end
	# end

	def buy_drink(drink_name, pub)
		if is_of_age? && !is_drunk?
			for drink in pub.drinks
				if drink.name == drink_name
					decrease_money(drink.price)
					adjust_drunkeness(drink.alcohol_level)
					pub.increase_money(drink.price)
					drink.quantity -= 1
				end
			end
		else
			return false
		end
	end

	def buy_food(food_name, pub)
		for food in pub.foods
			if food.name == food_name
				decrease_money(food.price)
				adjust_drunkeness(-food.rejuvenation)
				pub.increase_money(food.price)
				food.quantity -= 1
			end
		end
	end

end