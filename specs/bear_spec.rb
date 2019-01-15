require("minitest/autorun")
require("minitest/rg")
require_relative("../River")
require_relative("../Fish")
require_relative("../Bear")

# - A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly" ✅
# - A bear should have an empty stomach ( maybe an array ) ✅
# - A bear should be able to take a fish from the river ✅
# - A bear could have a roar method ✅
# - A bear could have a food_count method ✅



class TestBear < MiniTest::Test

  def setup
    @bear1 = Bear.new("Yogi", "Grizzly")

    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Mackrel")

    @river1 = River.new("Nile", [@fish1, @fish2, @fish3])
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear1.type)
  end

  def test_bear_stomach_starts_empty
    assert_equal(0, @bear1.count_fish_in_stomach())
  end

  def test_bear_can_eat_fish
    @bear1.eat_from(@river1)
    assert_equal(1, @bear1.count_fish_in_stomach)
    assert_equal(2, @river1.count_fish_in_river)
  end

  def test_bear_can_roar
    assert_equal("Rooaaaarrr!!!", @bear1.roar)
  end


end
