n, t = gets.split.map(&:to_i)
scores = Array.new(n, 0)
hash = Hash.new(0)
hash[0] = n
t.times do
  a, b = gets.split.map(&:to_i)
  a -= 1
  hash[scores[a]] -= 1
  if hash[scores[a]] == 0
    hash.delete(scores[a])
  end
  scores[a] += b
  hash[scores[a]] += 1
  puts hash.length
end