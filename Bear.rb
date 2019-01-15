class Bear

  attr_accessor :name, :stomach, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def count_fish_in_stomach()
    return @stomach.length
  end

  def eat_from(river)
    fish_being_ate = river.lose_fish
    @stomach << fish_being_ate.name
  end

  def roar
    return "Rooaaaarrr!!!"
  end


end
