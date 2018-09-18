require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class TestFish < MiniTest::Test

  def setup()
    @salmon = Fish.new("Salmon")

  end

  def test_fish_name
    assert_equal("Salmon", @salmon.fish_name)

  end

end
