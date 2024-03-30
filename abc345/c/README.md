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

上記の別解は、文字ごとの出現回数をハッシュに格納。
1 文字ずつ配列で回し、残りの文字数から残りの同じ文字数を差し引いた数を足していくことで答えを出している。

# まとめ

## 前提

- S の長さが N
- S の i 文字目 (1 <= i <= N) を Si
- 1 <= i <= j <= N
- i 文字目と j 文字目を入れ替えた文字を S(i, j)

入れ替え後のパターン

1. Si と Sj が違う文字
   S と S(i, j) は i 文字目と j 文字目のみが異なる。 よって入れ替える文字の箇所が違う (i,j) != (i', j') では S(i,j) と S(i', j') が同じになることはあり得ない。
2. Si と Sj が同じ文字
   S と S(i, j) が全く同じ文字となる。

この問題では、入れ替える前と同じ場合をパターンの 1 つとしてカウントする。
そのため 2 のパターンが複数回発生しても 1 つとしてカウントする。

ロジックは、以下となる。
1 文字ずつ違う文字の交換のみを加算していく。
1 回でも同じ文字での交換が発生する場合は、答えに 1 を加算する。

O(N\*\*2) 回避して O(N) にするために i 文字目の交換数を以下の計算で出力。
`残りの文字数 - 残りの文字の中で Si と同じ文字の数`

残りの文字の中で Si と同じ文字の数は、事前にハッシュを作って、文字ごとの出現回数を格納しておく。
