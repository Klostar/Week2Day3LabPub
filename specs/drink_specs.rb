require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class Drinktest < MiniTest::Test

def setup()
  @lager =Drink.new("Tennants",2,1)
end

def test_drink_has_name
  assert_equal("Tennants", @lager.name)
end

def test_drink_has_price
  assert_equal(2, @lager.price)
end

def test_drink_has_alchol_level
  assert_equal(1, @lager.alcohol)
end

end
