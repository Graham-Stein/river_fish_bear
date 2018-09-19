require("minitest/autorun")
require("minitest/rg")
require_relative("../river.rb")
require_relative("../fish.rb")

class TestRiver < MiniTest::Test

  def setup()
    @teith = River.new("Teith")
    @till = River.new("Till")
    @spey = River.new("Spey")
    @spey.add_fish(:salmon, 10)
    salmon = Fish.new(:salmon)
    seatrout = Fish.new(:seatrout)
  end

  def test_river_name
    assert_equal("Teith", @teith.river_name)
  end

  def test_fish_stock_empty__salmon
    salmon_stock = @teith.fish_stock[:salmon]
    assert_equal(0, salmon_stock)
  end

  def test_fish_stock_empty__seatrout
    salmon_stock = @teith.fish_stock[:seatrout]
    assert_equal(0, salmon_stock)
  end

  def test_add_salmon_to_river()
    @till.add_fish(:salmon, 10)
    salmon_stock = @till.fish_stock[:salmon]
    assert_equal(10, salmon_stock)
  end

  def test_add_seatrout_to_river()
    @till.add_fish(:seatrout, 10)
    seatrout_stock = @till.fish_stock[:seatrout]
    assert_equal(10, seatrout_stock)
  end

  def test_remove_fish()
    @teith.add_fish(:salmon, 5)
    @teith.remove_fish(:salmon, 4)
    salmon_stock = @teith.fish_stock[:salmon]
    assert_equal(1, salmon_stock)
  end

end
