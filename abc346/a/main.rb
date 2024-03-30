#!/usr/bin/env ruby
N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

B = []
for i in 0..N-2
  b = A[i] * A[i+1]
  B.push(b)
end

puts B.join(' ')
