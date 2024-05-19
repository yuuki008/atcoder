def bit_count(x)
  count = 0
  count += x[0] and x >>= 1 while x > 0
  count
end

H, W, N = gets.split.map(&:to_i)
D = [1,-1,W,-W]
T = gets.chomp.tr('LRUD','0123').chars.map(&:to_i)
G = H.times.map{ gets.chop.tr('#.','01') }.join.to_i(2)

g = G

T.each do |c|
  puts c
  puts D[c]
  puts g.to_s(2)
  g = (g << D[c]) & G
end
puts bit_count(g)