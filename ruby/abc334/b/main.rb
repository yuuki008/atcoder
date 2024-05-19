#!/usr/bin/env ruby
A, M, L, R = gets.chomp.split(" ").map(&:to_i)

# A, M, L, R = [-3, 2, 3, 8]

l = (L-A) % M == 0 ? (L-A)/M-1: (L-A)/M 
r = (R-A)/M

puts r - l