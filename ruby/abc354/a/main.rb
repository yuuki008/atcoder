#!/usr/bin/env ruby
H = gets.chomp.to_i

height = 0
ans = 0
i = 0

while height <= H
  height += 2 ** i
  i += 1
  ans += 1
end

puts ans