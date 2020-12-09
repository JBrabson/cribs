class House
  attr_reader   :price,
                :address,
                :house
  attr_accessor :rooms

  def initialize(price, address)
    @price = (price.delete("$").to_i)
    @address = address
    @rooms = []
    @house = house
  end

  def add_room(room)
    @rooms << room
  end
end
