require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class TestFish < MiniTest::Test

  def setup()
    @salmon = Fish.new(:salmon)

  end

  def test_fish_name
    assert_equal(:salmon, @salmon.fish_name)

  end

end
