#!/usr/bin/env ruby
K, G, M = gets.split.map(&:to_i)

g = G
m = M

K.times do
  if g == G
    g = 0
  elsif m == 0
    m += M
  elsif G-g < m
    t = G-g
    g += t
    m -= t
  else
    g += m
    m = 0
  end
end

puts "#{g} #{m}"