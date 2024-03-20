#!/usr/bin/env ruby
a = gets.chomp
b, c = gets.chomp.split(' ')
s = gets.chomp

a_b_c = a.to_i + b.to_i + c.to_i
puts "#{a_b_c} #{s}"