#!/usr/bin/env ruby
N, X, Y, Z = gets.split.map(&:to_i)

if (X <= Z && Y >= Z) || (X >= Z && Y <= Z)
  puts "Yes"
else
  puts "No"
end
