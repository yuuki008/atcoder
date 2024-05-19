#!/usr/bin/env ruby
N = gets.chomp.to_i

ans = []
N.times.each do |i|
  (i + 1) % 3 == 0 ? ans.push('x') : ans.push('o')
end

puts ans.join("")
