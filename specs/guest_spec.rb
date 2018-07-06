require("minitest/autorun")
require_relative("../guest")
require_relative("../song")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("guest1")
    @guest2 = Guest.new("guest2")
    @guest3 = Guest.new("guest3")
  end

  def test_guest_has_a_name
    assert_equal("guest1", @guest1.name )
  end
end
