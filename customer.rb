class Customer

  attr_reader(:customer_name,:wallet,:age,:drunk)
  attr_writer(:wallet,:drunk)

  def initialize(customer_name,wallet,age,drunk=0)
    @customer_name = customer_name
    @wallet = wallet
    @age = age
    @drunk = drunk
  end

  def buys_drink(pub,drink)

return "come back when youre sober" if @drunk > 15

if @age >= 18

    price = drink.price
    @wallet -= price
    pub.till += price
    @drunk += drink.alcohol
  else
    return "Come back when you're 18!"
  end
end


end
