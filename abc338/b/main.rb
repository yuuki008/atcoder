#!/usr/bin/env ruby
S = gets.chomp


tmp = [0] * 26

S.each_char do |c|
  tmp[c.ord - 'a'.ord] += 1
end

max_i = 0
tmp.each_with_index do |t, i|
  max_i = i if t > tmp[max_i]
end

puts (max_i + 'a'.ord).chr