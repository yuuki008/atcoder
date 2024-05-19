# 問題

https://atcoder.jp/contests/abc343/tasks/abc343_c

# ノート

「与えられる N の最大の回文立方数を求める」問題だった。
ただ以下の条件があったので、候補を絞り込むことができて 20 分ぐらいで解くことができた。
ある正整数 x が存在し、x \*\* 3 = K を満たす。

N の 最大 の 3 乗根から回文となる値を探索した

```ruby
(1..Math.cbrt(N).to_i).reverse_each do |x|
  cube = x ** 3

  if cube.to_s == cube.to_s.reverse
    puts cube
    exit
  end
end
```
