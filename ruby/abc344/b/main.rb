#!/usr/bin/env ruby
A = []

while line = gets
  break if line.chomp.empty?
  A << line.chomp
end

puts A.reverse