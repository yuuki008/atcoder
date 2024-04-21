#!/usr/bin/env ruby
N = gets.to_i
A = gets.chomp.split.map(&:to_i)

temp = 0

ans = 0
A.each do |a|
  temp += a

  if temp < 0
    ans += temp.abs
    temp = 0
  end
end

puts temp