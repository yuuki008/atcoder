#!/usr/bin/env ruby
N, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)


left = K
ans = 0
while A.size > 0
  if A[-1] > left
    ans += 1
    left = K
  else
    a = A.pop()
    left -= a
  end
end

puts left === K ? ans : ans + 1