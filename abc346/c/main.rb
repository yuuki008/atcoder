#!/usr/bin/env ruby
N, K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)
A.uniq!


ans = 0
for i in 1..K
  ans += i unless A.include?(i) 
end

puts ans