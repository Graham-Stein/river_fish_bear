require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestBear < MiniTest::Test

  def setup()
    @grizzly = Bear.new("Chunky", "Grizzly")
    @spey = River.new("Spey")
    @spey.add_fish(:salmon, 10)
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

  def test_bear_eat()
    @grizzly.bear_eat(@spey, @spey.fish_stock)
    # @spey.fish_stock[:salmon]
    fish_stock = @spey.fish_stock[:salmon]
    assert_equal(5, fish_stock)
  end
end
