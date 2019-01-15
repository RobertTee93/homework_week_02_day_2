class River

  attr_accessor :name, :fish_population

  def initialize(name, fish_population)
    @name = name
    @fish_population = fish_population
  end

  def count_fish_in_river()
    return @fish_population.length
  end

  def lose_fish()
    lost_fish = @fish_population.pop()
    return lost_fish
  end

end
