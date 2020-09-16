#!/usr/bin/env ruby

require_relative "rectangle"
require_relative "circle"
require_relative "geometry_helper"

include GeometryHelper

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

rescue ArgumentError
  puts "You have entered an invalid input"
end
