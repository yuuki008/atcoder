# N, T = 10 ** 5, 10 ** 5
# AB = T.times.map { [rand(1..N), rand(1..10 ** 9)] }

# 2, 3, 2, 2
N, T = 3, 4
AB = [
[1, 10],
[3, 20],
[2, 10],
[2, 10],
]

counts = { 0 => N }
players = [0] * (N + 1)

AB.each do |a, b|
  counts[players[a]] -= 1 if counts[players[a]]
  counts.delete(players[a]) if counts[players[a]] == 0
  
  players[a] += b
  counts[players[a]] ? counts[players[a]] += 1 : counts[players[a]] = 1


  puts "---------------"
  puts players.to_s
  puts counts.to_s
  puts counts.keys.size
end