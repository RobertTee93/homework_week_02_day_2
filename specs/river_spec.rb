require("minitest/autorun")
require("minitest/rg")
require_relative("../River")
require_relative("../Fish")
require_relative("../Bear")

# - A river should have a name e.g. "Amazon" ✅
# - A river should hold many fish ✅
# - A river should lose a fish when a bear takes a fish ✅
# A river could have a fish_count method ✅

class TestBear < MiniTest::Test

  def setup
    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Mackrel")
    @river1 = River.new("Nile", [@fish1, @fish2, @fish3])
  end

  def test_river_has_name
    assert_equal("Nile", @river1.name)
  end

  def test_count_fish_in_river
    assert_equal(3, @river1.count_fish_in_river())
  end

  def test_river_loses_fish
    lost_fish = @river1.lose_fish()
    assert_equal(2, @river1.count_fish_in_river)
    assert_equal("Mackrel", lost_fish.name)
  end

end
