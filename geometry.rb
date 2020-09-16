#!/usr/bin/env ruby

require_relative "rectangle"
require_relative "circle"

def gets_length_and_width
  print "What is the length of the rectangle (in meters ?) "
  length = Integer(gets)

  print "What is the width of the rectangle (in meters ?) "
  width = Integer(gets)

  [length, width]
end

def perform_calculations_rectangle(length, width)
  rectangle = Rectangle.new(length, width)
  area = rectangle.area
  perimeter = rectangle.perimeter

  [area, perimeter]
end

def display_results_rectangle(area, perimeter)
  puts(format("The area is %.2f m", area))
  puts(format("The perimeter is %.2f m", perimeter))
end

def calculate_for_rectangle
  length, width = get_length_and_width

  # Guard clause
  unless length.positive? && width.positive?
    puts "Length and width must be positive"
    return
  end

  area, perimeter = perform_calculations_rectangle(length, width)

  display_results_rectangle(area, perimeter)
end

def gets_radius
  print "What is the radius of the circle (in meters)? "
  radius = Integer(gets)
end

def perform_calculations_circle(radius)
  circle = Circle.new(radius)
  area = circle.area
  diameter = circle.diameter
  circumference = circle.circumference

  [area, diameter, circumference]
end

def display_results_circle(area, diameter, circumference)
  puts(format("The area is %.2f m", area))
  puts(format("The diameter is %.2f m", diameter))
  puts(format("The circumference is %.2f m", circumference))
end

def calculate_for_circle
  radius = get_radius

  # Guard clause
  unless radius.positive?
    puts "Radius must be positive"
    return
  end

  area, diameter, circumference = perform_calculations_circle(radius)

  display_results_circle(area, diameter, circumference)
end

begin
  loop do
    print "Do you want to calculate a [r]ectangle or a [c]ircle? "
    choice = gets.chomp.upcase

    if choice == "R"
      calculate_for_rectangle
    elsif choice == "C"
      calculate_for_circle
    else
      puts "You must enter either r or c "
    end

    print "Do you want to quit yes or no? [y/n]: "
    choice = gets.chomp.upcase

    break if choice == "Y"
  end

rescue ArgumentError => e
  puts "You have entered an invalid input"
end
