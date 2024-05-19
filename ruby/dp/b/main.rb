#!/usr/bin/env ruby
N, K = gets.chomp.split.map(&:to_i)
H = gets.chomp.split.map(&:to_i)

dp = Array.new(N, 1<<30)

dp[0] = 0

0.upto(N-1) do |i|
  K.times do |k|
    j = k + 1
    dp[i+j] = [dp[i] + (H[i]-H[i+j]).abs, dp[i+j]].min if i+j < N
  end
end

puts dp[N-1]
