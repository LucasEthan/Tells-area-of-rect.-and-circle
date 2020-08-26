#!/usr/bin/env ruby
print "Do you want to get the area of a [r]ectangle or a [c]ircle? "
choice = gets.chomp
# Initialize area
area = 0.0
if choice == "r"
  # Asks user for length
  print "What is the length of the rectangle (in meters ?) ".chomp
  length = gets.to_f
  # Asks user for width
  print "What is the width of the rectangle (in meters ?) "
  width = gets.to_f
  # calculates and says the area of the rectangle
  area = length * width
  

elsif choice == "c"
  # Asks the user for radius
  print "What is the radius of the circle (in meters)? "
  radius = gets.to_f
  # calculates and says the area of the circle
  area = radius * radius * 3.14159265359
  
else
  # Choice must be either "r" or "c"
  puts "You have entered an invalid choice."
end
puts(format("The area is  %.2f m, bye!", area))
