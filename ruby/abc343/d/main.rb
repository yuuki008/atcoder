N, T = gets.split.map(&:to_i)
AB = T.times.map { gets.split.map(&:to_i) }

players = [0] * (N + 1)
counts = Hash.new(0)
counts[0] = N

AB.each do |a, b|
  counts[players[a]] -= 1
  counts.delete(players[a]) if counts[players[a]] == 0

  players[a] += b
  counts[players[a]] += 1

  puts counts.size
end