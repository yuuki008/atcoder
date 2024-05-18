#!/usr/bin/env ruby
N = gets.chomp.to_i
SC = N.times.map { gets.chomp.split }
S = SC.map { |s, c| s }
C = SC.map { |s, c| c.to_i }

total_rate = C.sum
sorted_names = S.sort

winner_index = total_rate % N

puts sorted_names[winner_index]
