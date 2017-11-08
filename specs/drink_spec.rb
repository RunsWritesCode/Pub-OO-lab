require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestDrink < MiniTest::Test
	def setup	
		@whisky = Drink.new("whisky", 5, 5)
	end

	def test_whisky_name
		assert_equal(@whisky.name, "whisky")
	end
end