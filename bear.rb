class Bear

  attr_reader :bear_name, :bear_type, :stomach

  def initialize(bear_name, bear_type)

    @bear_name = bear_name
    @bear_type = bear_type
    @stomach = []

  end

  def bear_eat(river, fish)
    p fish
    p river
    fish_to_eat = fish[:salmon]
    fish_type = fish.key
    p fish_type
    p fish_to_eat
    river.remove_fish(fish)
  end

end
