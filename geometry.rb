#!/usr/bin/env ruby

require_relative "rectangle"
require_relative "circle"
begin
loop do
print "Do you want to calculate a [r]ectangle or a [c]ircle? "
choice = gets.chomp

# Initialize variables
area = 0.0
perimeter = 0.0
circumference = 0.0
diameter = 0.0

if choice == "r"
  # Asks user for length
  print "What is the length of the rectangle (in meters ?) ".chomp
  length = Integer(gets)
  # Asks user for width
  print "What is the width of the rectangle (in meters ?) "
  width = Integer(gets)
  rectangle = Rectangle.new(length, width)
  area = rectangle.area
  perimeter = rectangle.perimeter
    
elsif choice == "c"
  # Asks the user for radius
  print "What is the radius of the circle (in meters)? "
  if radius = Integer(gets) > 0
    circle = Circle.new(radius)
    area = circle.area
    diameter = circle.diameter
    circumference = circle.circumference
  else
    puts "You have entered a invalid input"
  end
else
  puts "You have entered a invalid input"
end

puts(format("The area is %.2f m", area)) unless area.zero?
puts(format("The perimeter is %.2f m", perimeter)) unless perimeter.zero?
puts(format("The diameter is %.2f m", diameter)) unless diameter.zero?
puts(format("The circumference is %.2f m", circumference)) unless circumference.zero?

print "Do you want to quit yes or no? [y/n]: "
choice = gets.chomp.upcase

break if choice == "Y"
end
rescue ArgumentError => e
  puts "You have entered an invalid input"
end
