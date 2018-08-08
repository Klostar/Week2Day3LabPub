class Pub

  attr_reader(:pub_name,:till, :drinks)
  attr_writer(:till)
  def initialize(pub_name,till, drinks=[])
    @pub_name = pub_name
    @till = till
    @drinks = drinks

  end

end
