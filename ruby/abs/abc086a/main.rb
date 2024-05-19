#!/usr/bin/env ruby
a,b = gets.chomp.split(" ")

a_b_multi = a.to_i * b.to_i

if a_b_multi % 2 == 0
  puts "Even"
else
  puts "Odd"
end