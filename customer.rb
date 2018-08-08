class Customer

attr_reader(:customer_name,:wallet)
attr_writer(:wallet)

def initialize(customer_name,wallet)
@customer_name = customer_name
@wallet = wallet
end

end
