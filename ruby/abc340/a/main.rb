#!/usr/bin/env ruby
A, B, D = gets.split.map(&:to_i)

temp = A

ans = []
while temp <= B
  ans << temp
  temp += D
end

puts ans.join(' ')