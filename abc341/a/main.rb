#!/usr/bin/env ruby
N = gets.chomp.to_i

ans = []
(N+N+1).times do |i|
  if i % 2 == 0
    ans << "1"
  else
    ans << "0"
  end
end

puts ans.join("")