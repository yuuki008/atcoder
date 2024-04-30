#!/usr/bin/env ruby
N = gets.chomp.to_i

repunit = [1, 11, 111, 1111, 11111, 111111, 1111111, 11111111, 111111111, 1111111111, 11111111111, 111111111111]

tmp = []
for i in repunit
  for j in repunit
    for k in repunit
      tmp << i + j + k 
    end
  end
end

puts tmp.uniq.sort[N-1]