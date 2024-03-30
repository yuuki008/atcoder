# 問題

https://atcoder.jp/contests/abc346/tasks/abc346_c

長さ N の正整数列 A=(A 1,A 2,…,A N​) および正整数 K が与えられます。

1 以上 K 以下の整数のうち、A の中に一度も現れないものの総和を求めてください。

## 制約

1≤N≤2×10 5
1≤K≤2×10 9
1≤A
i≤2×10
9 入力は全て整数

# ノート

```ruby
ans = 0
for i in 1..K
  ans += i unless A.include?(i)
end

puts ans
```

これだと計算量は O(K) となる。
K は最大で 10 ** 9 となるので LTE になる。
制約だと N は 10 ** 5 で O(N) だと LTE にならない。

計算方法は、 1 から K までの合計から A にある数値を減算することで答えを出す

```ruby
def sum_numbers_up_to(n)
  return n * (n + 1) / 2
end

ans = sum_numbers_up_to(K)

for a in A.uniq do
  next if a > K
  ans -= a
end

puts ans

```
