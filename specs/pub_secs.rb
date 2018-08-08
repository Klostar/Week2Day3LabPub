require("minitest/autorun")
require("minitest/rg")
require_relative("../pub.rb")
require_relative("../drink.rb")

class Pubtest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Tennants",2)
    @drink2 = Drink.new("Cider",3)
    @drink3 = Drink.new("Beer",4)
    @pub = Pub.new("Chanter",10,[@drink1,@drink2,@drink3])
  end

  def test_pub_has_name
    assert_equal("Chanter", @pub.pub_name)
  end

  def test_pub_has_drinks
    assert_equal([@drink1,@drink2,@drink3], @pub.drinks)
  end

def test_pub_has_till_float
  assert_equal(10, @pub.till)
end

end
