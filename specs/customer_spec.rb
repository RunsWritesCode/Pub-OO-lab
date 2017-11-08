require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')
require_relative('../food.rb')

class TestCustomer < MiniTest::Test
	def setup	
		@customer = Customer.new("Sophie", 50, 24)
		@billy = Customer.new("Billy", 14, 100)
	end

	def test_customer_name
		assert_equal("Sophie", @customer.name)
	end

end