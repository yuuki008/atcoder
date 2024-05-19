# 問題

https://atcoder.jp/contests/abc343/tasks/abc343_d

# ノート

TLE

```ruby
players = {}
N.times do |i|
  players[i+1] = 0
end

AB.each do |a, b|
  players[a] += b

  puts players.values.uniq.size
end
```

N を使えばいけるかも、、、
N が呼ばれた回数を記録しておく

全然わかんないから解説見て、以下のコードで提出したけど TLE だった〜〜

```ruby
counts = { 0 => N }
players = [0] * (N + 1)

AB.each do |a, b|
  counts[players[a]] -= 1 if counts[players[a]]
  counts.delete(players[a]) if counts[players[a]] == 0

  players[a] += b
  counts[players[a]] ? counts[players[a]] += 1 : counts[players[a]] = 1

  puts counts.keys.size
end
```

これをコピペしていけたんやけど、ほぼ一緒なのにでなんでダメだったんだろう？
このコードが原因だった。 **keys を取得するのに Hash のキー個数を数える計算量が発生して TLE になってた。**
`puts counts.keys.size`
というかハッシュのキーの個数を取得するのはどんなアルゴリズムを使っているんだろう？

```ruby
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
```

## 気づき

`hash[scores[a]] -= 1` ここでなんでエラーにならないんだろうと思ったんだけど、キーがない場合でも値を設定できるみたい

```
irb(main):006:0> hash = Hash.new(0)
irb(main):007:0> hash[1] -= 1
irb(main):008:0> hash
=> {1=>-1}
irb(main):009:0>
```

ただこれで呼び出すとエラーになった。

```
irb(main):009:0> hash = {}
irb(main):010:0> hash[1] -= 1
Traceback (most recent call last):
        4: from /Users/yu-home/.rbenv/versions/2.7.1/bin/irb:23:in `<main>'
        3: from /Users/yu-home/.rbenv/versions/2.7.1/bin/irb:23:in `load'
        2: from /Users/yu-home/.rbenv/versions/2.7.1/lib/ruby/gems/2.7.0/gems/irb-1.2.3/exe/irb:11:in `<top (required)>'
        1: from (irb):10
NoMethodError (undefined method `-' for nil:NilClass)
```

`Hash.new(0)` の 0 はデフォルトの値を設定できるみたい
