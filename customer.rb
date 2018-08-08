class Customer

  attr_reader(:customer_name,:wallet,:age)
  attr_writer(:wallet)

  def initialize(customer_name,wallet,age)
    @customer_name = customer_name
    @wallet = wallet
    @age = age
  end

  def buys_drink(pub,drink)
if @age >= 18

    price = drink.price
    @wallet -= price
    pub.till += price
  else
    return "Come back when you're 18!"
  end
end


end
