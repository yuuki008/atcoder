s = gets.chomp.chars
l = s.length
h = Hash.new(0)
hm = Hash.new(0)
s.each do |c|
  h[c] += 1
end

ans = 0
s.each do |c|
  l -= 1
  hm[c] += 1
  ans += l - (h[c] - hm[c])
end

puts h.values.select { |v| v > 1 }.empty? ? ans : ans + 1