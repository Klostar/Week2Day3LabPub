class Customer

  attr_reader(:customer_name,:wallet)
  attr_writer(:wallet)

  def initialize(customer_name,wallet)
    @customer_name = customer_name
    @wallet = wallet
  end

  def buys_drink(pub,drink)
    price = drink.price
    @wallet -= price
    pub.till += price
  end



end
