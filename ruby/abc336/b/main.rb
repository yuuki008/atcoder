#!/usr/bin/env ruby
decimal = gets.to_i

ans = 0
while decimal % 2 == 0
  ans += 1
  decimal /= 2
end

puts ans