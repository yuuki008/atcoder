#!/usr/bin/env ruby
N = gets.to_i

X = []
Y = []
N.times.each do
  x, y = gets.chomp.split.map(&:to_i)
  X << x
  Y << y
end

x_sum = X.sum 
y_sum = Y.sum

if x_sum == y_sum
  puts 'Draw'
elsif x_sum > y_sum
  puts 'Takahashi'
else
  puts 'Aoki'
end

