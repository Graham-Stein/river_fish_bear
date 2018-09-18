require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")

class TestBear < MiniTest::Test

  def setup()
    @grizzly = Bear.new("Chunky", "Grizzly")
  end


  def test_bear_name()
    assert_equal("Chunky", @grizzly.bear_name)
  end

  def test_bear_type()
    assert_equal("Grizzly", @grizzly.bear_type)
  end

  def test_bear_stomach_empty()
    assert_equal([],@grizzly.stomach)
  end
end
