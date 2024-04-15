これだと TLE

```ruby
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
  g = (g << D[c]) & G
end
puts bit_count(g)
```

500 _ 500 _ 500 の計算量で O(125000000) になる。
C だと通るみたいだけど遅い言語だと TLE になるみたい

ruby だと以下みたいなビットカウントを使うみたいだけど、わかんないからパス

```ruby
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
  g = (g << D[c]) & G
end
puts bit_count(g)
```
