#!/usr/bin/env ruby
N, L, R = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

ans = []
A.each do |a|
  if a < L
    ans << L
  elsif a > R
    ans << R
  else
    ans << a
  end
end

puts ans.join(" ")