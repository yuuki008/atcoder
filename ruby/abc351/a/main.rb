#!/usr/bin/env ruby
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)

puts (A.sum - B.sum) + 1
