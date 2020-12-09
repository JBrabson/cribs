class House
  attr_reader :price

  def initialize(price, address)
    @price = (price.delete("$").to_i)
  end

end
