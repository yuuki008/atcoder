# 問題

https://atcoder.jp/contests/abc344/tasks/abc344_d

# ノート

文字列 T になるように Si1 .. SiN 中から選ぶ
文字列が T になる最小の選択回数を求める。

```
T
N
A1 S11 S12 ... S1A1
A2 S21 S22 ... S2A2
.
.
.
AN SN1 SN2 ... SNAN
```

N で回して A でも回して最小の選択を回数を全探索すると 最大で O(100 \*\* 10) の計算量になるので別パターンを考える。
思いつかなかったので全パターンをハッシュに格納する方式で実装。
もちろん TLE

```ruby
$hash = {}

def recursive(i, substring, times)
  times = $hash[substring].nil? ? times : [$hash[substring], times].min
  $hash[substring] = times

  return if AA[i].nil?

  for a in AA[i]
    recursive(i+1, substring+a, times+1)
    recursive(i+1, substring, times)
  end
end

for a in AA[0]
  recursive(1, a, 1)
end


puts $hash[T] || -1
```

途中で比較対象の一部でない文字列の時は、hash にセットしないように

```ruby
def recursive(i, substring, times)
  times = $hash[substring].nil? ? times : [$hash[substring], times].min
  $hash[substring] = times

  return if AA[i].nil?

  for a in AA[i]
    recursive(i+1, substring+a, times+1)
    recursive(i+1, substring, times)
  end
end
```

これでも TLE になるから幅優先探索で解いてみようと思ったがわかんないから答え見た。
動的計画法を使うみたい、、、

dp[i][j] ・・・ i 袋目までみて、T の j 文字目まで作れている時の最小コスト

```ruby
dp = Array.new(N+1) { Array.new(T.size+1, 1e9) }

dp[0][0] = 0

N.times do |i|
  T.size.times do |j|
    dp[i+1][j] = [dp[i+1][j], dp[i][j]].min
    AA[i].each do |a|
      if T[j..-1].start_with?(a)
        dp[i+1][j+a.size] = [dp[i+1][j+a.size], dp[i][j]+1].min
      end
    end
  end
end

ans = dp.map { |e| e[T.size] }.min

puts ans == 1e9 ? -1 : ans
```
