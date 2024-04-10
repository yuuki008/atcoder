#!/usr/bin/env ruby
H, W = gets.chomp.split.map(&:to_i)
A = H.times.map { gets.chomp.split('') }
N = gets.chomp.to_i
R = N.times.map { gets.chomp.split.map(&:to_i) }


$dp = Array.new(H) { Array.new(W, 0) }
R.each do |r, c, v|
  $dp[r-1][c-1] = v
end

def recursive(energy, h, w)
  return if energy < 0

  if A[h][w] == "T"
    puts "Yes"
    exit
  end

  return if h >= H || h < 0 || w >= W || w < 0
  return if A[h][w] == "#"
  return if $dp[h][w] >= energy

  $dp[h][w] = energy
  recursive(energy-1, h-1, w)
  recursive(energy-1, h+1, w)
  recursive(energy-1, h, w-1)
  recursive(energy-1, h, w+1)
end

h, w = A.flatten.index('S').divmod(W)
recursive(0, h, w)

puts "No"