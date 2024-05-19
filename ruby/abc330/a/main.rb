#!/usr/bin/env ruby
N, L = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

puts A.filter { |a| a >= L }.size
