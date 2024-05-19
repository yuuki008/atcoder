#!/usr/bin/env ruby
T = gets.chomp
N = gets.chomp.to_i
AA = (1..N).map { gets.chomp.split[1..-1]}

dp = Array.new(N+1) { Array.new(T.size+1, 1e9) }

dp[0][0] = 0

N.times do |i|
  T.size.times do |j|
    dp[i+1][j] = [dp[i+1][j], dp[i][j]].min
    AA[i].each do |a|
      if T[j..-1].start_with?(a)
        dp[i+1][j+a.size] = [dp[i+1][j+a.size], dp[i][j]+1].min
      end
    end
  end
end

ans = dp.map { |e| e[T.size] }.min

puts ans == 1e9 ? -1 : ans