#!/usr/bin/env ruby
N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)



hash2 = {}

A.each_with_index do |a, i|
  hash2[a] = i+1
end

ans = []

tmp = -1

loop do
  break if hash2[tmp].nil?
  ans << hash2[tmp]

  tmp = hash2[tmp]
end

puts ans.join(' ')
