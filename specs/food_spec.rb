require('minitest/autorun')
require('minitest/rg')
require_relative('../food.rb')

class TestFood < MiniTest::Test
	def setup
		@food = Food.new("veggie_burger", 8, 4)
	end	

	def test_food_exists
		assert_equal("veggie_burger", @food.name)
	end
end