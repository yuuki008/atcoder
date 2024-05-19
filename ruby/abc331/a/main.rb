#!/usr/bin/env ruby
M,D = gets.chomp.split.map(&:to_i)
y,m,d = gets.chomp.split.map(&:to_i)

d += 1

if d > D
  d = 1
  m += 1
end

if m > M
  m = 1
  y += 1
end

puts "#{y} #{m} #{d}"