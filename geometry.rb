#!/usr/bin/env ruby
print "Do you want to get the area of a [r]ectangle or a [c]ircle? "
choice = gets.chomp

if choice == "r"
  # Asks user for length
  print "What is the length of the rectangle (in meters ?) ".chomp
  length = gets
  # Asks user for width
  print "What is the width of the rectangle (in meters ?) "
  width = gets
  # calculates and says the area of the rectangle
  area = "#{length.to_f * width.to_f}"
  puts(format("The area is  %.2f m, bye!", "#{area}"))

else if choice == "c"
  # Asks the user for radius
  print "What is the radius of the circle (in meters)? "
  radius = gets
  # calculates and says the area of the circle
  area_2 = "#{radius.to_f * radius.to_f * 3.14159265359.to_f}"
  puts(format("The area is  %.2f m, bye!", "#{area_2}"))
else
  # Choice must be either "r" or "c"
  puts "You have entered an invalid choice."
end
end
