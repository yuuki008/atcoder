#!/usr/bin/env ruby
N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)

dp = Array.new(N, -1)
dp[0] = 0

def dfs(i, dp)
  return dp[i] if i == 0
  return dp[i] if dp[i] != -1

  if i == 1
    dp[i] = (H[i] - H[i - 1]).abs
  else
    fp = dfs(i-1, dp) + (H[i] - H[i-1]).abs
    sp = dfs(i-2, dp) + (H[i] - H[i-2]).abs

    dp[i] = [fp, sp].min
  end

  dp[i]
end

dfs(N-1, dp)

puts dp[N-1]