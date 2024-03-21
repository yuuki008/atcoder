#!/usr/bin/env ruby
S = gets.chomp
N = S.size

patterns = []
for i in 0..N-1 do
  for j in i..N-1 do
    if i == j
      next
    end

    s = S.dup
    s[i], s[j] = s[j], s[i]
    patterns.push(s) unless patterns.include?(s)
  end
end

puts patterns.size