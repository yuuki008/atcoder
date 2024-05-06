#!/usr/bin/env ruby
D = gets.chomp.to_i

ans = Float::INFINITY
(0..Math.sqrt(D)).each do |x|
  y = Math.sqrt((D - x**2).abs).to_i
  ans = [ans, (x**2 + y**2 - D).abs].min
  y += 1
  ans = [ans, (x**2 + y**2 - D).abs].min
end

puts ans