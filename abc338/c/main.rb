#!/usr/bin/env ruby
N = gets.to_i
Q = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)

ans = 0

0.upto(1_000_000) do |a|
  b = 1_000_000
  f = true
  N.times do |i|
    rest = Q[i] - A[i] * a
    if rest < 0
      f = false
      break
    end
    next if B[i] == 0
    tmp = rest / B[i]
    b = [b, tmp].min
  end

  if f
    ans = [a+b, ans].max
  else
    break
  end
end

puts ans