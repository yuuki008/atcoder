#!/usr/bin/env ruby
N, S, K = gets.split.map(&:to_i)
PK = N.times.map { gets.split.map(&:to_i) }

sum = PK.sum { |(p, k)| p * k }

if sum >= S
  puts sum
else
  puts sum + K
end