require("minitest/autorun")
require("minitest/rg")
require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drink.rb")

class Customertest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Tennants",2)
    @drink2 = Drink.new("Cider",3)
    @drink3 = Drink.new("Beer",4)
    @person = Customer.new("Dave",50,20)
    @person2 = Customer.new("Junior",10,10)
    @pub = Pub.new("Chanter",10,[@drink1,@drink2,@drink3])

  end

  def test_customer_has_name
    assert_equal("Dave",@person.customer_name)
  end

  def test_customer_has_money
    assert_equal(50, @person.wallet)
  end

  def test_customer_has_age
    assert_equal(20, @person.age)
  end

  def test_customer_buys_drink
    @person.buys_drink(@pub,@drink2)
    assert_equal(47,@person.wallet)
    assert_equal(13, @pub.till)
  end

def test_customer_buys_drink__underage
  result = @person2.buys_drink(@pub,@drink2)
  assert_equal("Come back when you're 18!",result)
end


end
