class River

  attr_reader :river_name, :fish_stock

  def initialize(river_name)

    @river_name = river_name
    @fish_stock = {salmon: 0,
                   seatrout: 0}

  end

  def add_fish(fish_type, fish_number)
    @fish_stock[fish_type] = fish_number + @fish_stock[fish_type]
  end

  def remove_fish(fish_type, fish_number)
    p "You have access to this..."
    fish_number = -fish_number
    add_fish(fish_type, fish_number)
  end


end
