#!/usr/bin/env ruby
N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
ST = []
(N - 1).times do 
  ST << gets.chomp.split.map(&:to_i)
end

(N-1).times do |i|
  divide = A[i] / ST[i][0]

  A[i] -= divide * ST[i][0]
  A[i+1] += divide * ST[i][1]
end

puts A[-1]