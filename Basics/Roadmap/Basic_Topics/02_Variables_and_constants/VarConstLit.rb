class Circle

  $terrain_size = 200

  PI = 3.1416

  def initialize(radius)
    @radius = radius
    @circle_area = PI * (@radius ** 2)
  end

  def getCircleArea
    return @circle_area
  end

  def getRadius
    return @radius
  end
end

puts "Insert the radius of the circle:"
circle = Circle.new(gets.chomp.to_f)

puts "Circle area with radius of #{circle.getRadius}m is: #{circle.getCircleArea.round(2)}m"
puts "You can make #{($terrain_size/circle.getCircleArea).round(2)} circle(s) inside of a #{$terrain_size}m terrain"