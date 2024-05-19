require "pry"

H, W = 4, 5
A = [
['.','.', '#', '.', '.'],
['.','S', '#', '#', '.'],
['.','#', '#', 'T', '.'],
['.','.', '.', '.', '.'],
]
N = 3
R = [
[3,1,5],
[1,2,3],
[2,2,1],
]

# H,W = 4,4
# A = [
# ['S','.','.','.'],
# ['#','.','.','#'],
# ['#','.','.','.'],
# ['.','.','#','T'],
# ]
# N = 4
# R = [
# [1,1,3],
# [1,3,5],
# [3,2,1],
# [2,3,1],
# ]

$dp = Array.new(H) { Array.new(W, -1) }

R.each do |r, c, v|
  $dp[r-1][c-1] = v
end

puts $dp.inspect
def recursive(energy, h, w)
  puts "energy: #{energy}, h: #{h}, w: #{w}"
  return if energy < 0

  if A[h][w] == "T"
    puts "Yes"
    exit
  end

  return if h >= H || h < 0 || w >= W || w < 0
  return if A[h][w] == "#"

  energy = [energy, $dp[h][w]].max
  $dp[h][w] = energy
  recursive(energy-1, h-1, w)
  recursive(energy-1, h+1, w)
  recursive(energy-1, h, w-1)
  recursive(energy-1, h, w+1)
end

h, w = A.flatten.index('S').divmod(W)
recursive(0, h, w)

puts "No"