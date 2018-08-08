require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")

class Customertest < MiniTest::Test

def setup()
  @person = Customer.new("Dave",50)
end

def test_customer_has_name
  assert_equal("Dave",@person.customer_name)
end

def test_customer_has_money
  assert_equal(50, @person.wallet)
end

end
