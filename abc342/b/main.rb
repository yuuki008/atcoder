#!/usr/bin/env ruby
N = gets.chomp.to_i
P = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i
AB = Q.times.map { gets.chomp.split.map(&:to_i) }

AB.each do |ab|
  min_p_index = [P.index(ab[0]), P.index(ab[1])].min
  puts P[min_p_index]
end