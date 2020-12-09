require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require "./lib/house"

class HouseTest < Minitest::Test
  def test_it_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_it_has_price
    house = House.new("$400000", "123 sugar lane")
    assert_equal 400000, house.price
  end

  def test_it_has_address
    house = House.new("$400000", "123 sugar lane")
    assert_equal "123 sugar lane", house.address
  end

  def test_it_adds_room
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    house.add_room(room_1)
    assert_equal [room_1], house.rooms
  end

  def test_above_market_average?
    house = House.new("$400000", "123 sugar lane")
    assert_equal false, house.above_market_average?
  end
end
