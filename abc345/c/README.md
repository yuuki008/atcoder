# 記録

最初は以下のような 2 重ループで実装したが、LTE となったため別解を考えた

```ruby
for i in 0..S.length-1 do
  for j in i..S.length-1 do
    next if S[i] == S[j]

    ans += 1
  end
end
```

次は、全交換数から同じ文字の交換数を引く方法を考えた。
詰まったのは、同じ文字の交換で初期値になった文字もパターンとしてカウントしなければならないこと。

```ruby
char_hash = Hash.new(0)
char_len = str.length

str.each_char do |c|
  char_hash[c] += 1
end


dup_exchange_num = char_hash.reduce(0) do |acc, (k, v)|
  acc + (v * (v-1)) / 2
end

str_c_2 = char_len * (char_len - 1) / 2
str_c_2 - dup_exchange_num + 1
```

しかし上記の実装も全問正解できなかった。問題を解き始めて 3 時間ぐらいかかったので答えを見て実装。

```ruby
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

```

上記の別解は、1 文字ずつ全ての組み合わせをカウントアップしている。
その文字から見て残りの同じ文字数を差し引くことで同じ文字同士の交換を省いている。

ポイントは残りの同じ文字数をハッシュ 2 つを用いて表現しているところ。
