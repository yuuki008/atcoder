#!/usr/bin/env ruby
N = gets.chomp.to_i
S = gets.chomp
Q = gets.chomp.to_i
CD = Q.times.map { gets.chomp.split }

CD.each do |cd|
  c = cd[0]
  d = cd[1]

  S.gsub!(c, d)
end

puts S