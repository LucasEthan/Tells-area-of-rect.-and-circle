#!/usr/bin/env ruby

require_relative "rectangle"
require_relative "circle"

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
  length = gets.to_f
  # Asks user for width
  print "What is the width of the rectangle (in meters ?) "
  width = gets.to_f
  rectangle = Rectangle.new(length, width)
  area = rectangle.area
  perimeter = rectangle.perimeter
  
elsif choice == "c"
  # Asks the user for radius
  print "What is the radius of the circle (in meters)? "
  radius = gets.to_f
  circle = Circle.new(radius)
  area = circle.area
  diameter = circle.diameter
  circumference = circle.circumference
  
else
  # Choice must be either "r" or "c"
  puts "You have entered an invalid choice."
end
puts(format("The area is %.2f m", area)) unless area.zero?
puts(format("The perimeter is %.2f m", perimeter)) unless perimeter.zero?
puts(format("The diameter is %.2f m", diameter)) unless diameter.zero?
puts(format("The circumference is %.2f m", circumference)) unless circumference.zero?
