#!/usr/bin/env ruby
N, K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)


def sum_numbers_up_to(n)
  return n * (n + 1) / 2
end

ans = sum_numbers_up_to(K)

for a in A.uniq do
  next if a > K
  ans -= a
end

puts ans