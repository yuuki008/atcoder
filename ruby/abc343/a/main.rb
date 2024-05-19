#!/usr/bin/env ruby
A, B = gets.chomp.split.map(&:to_i)

puts [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].filter { |num| num != A + B}.sample