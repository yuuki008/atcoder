#!/usr/bin/env ruby
S = gets.chomp

ans = []

for i in 0..S.size - 1 do
  for j in i..S.size - 1 do
    substring = S[i..j]
    ans.push(substring)
  end
end

puts ans.uniq.size