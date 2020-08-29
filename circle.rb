class Circle
  attr_accessor :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * radius * radius
  end

  def diameter
    radius * 2
  end

  def circumference
    Math::PI * diameter
  end
end
