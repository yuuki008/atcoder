# 問題

https://atcoder.jp/contests/abc347/tasks/abc347_c

# ノート

```ruby
for i in 1..A + B
  on_shedule = true

  for d in D
    day_of_week = (i + d) % (A + B)
    if day_of_week > A || day_of_week == 0
      on_shedule = false
      break
    end
  end


  if on_shedule
    puts "Yes"
    exit
  end
end

puts "No"
```

これだと TLE 、、、

```ruby
day_of_weeks = []
for d in D
  day_of_week = d % (A+B) === 0 ? A+B : d % (A+B)

  day_of_weeks.push(day_of_week)
end

if day_of_weeks.max - day_of_weeks.min >= A
  puts "No"
else
  puts "Yes"
end
```

D の曜日を計算し、最大値と最小値の差が祝日数以下であれば、予定が全て祝日の可能性があるので `Yes` となる。
ただこれだと 1 つテストで落ちてしまう。
原因がわからず、終了してしまった。

```ruby
A = 5;
B = 3;
D = [1, 7]

# 答え: "Yes"
# 今日が 2 ~ 4 日目の間で D が全て祝日となる
```

このように A (祝日) の方が B (平日) より多く `d-(d-1)` が A と B の両方より大きい場合に本来であれば全て祝日になるパターンも存在するが、答えは `No` になる。

そのため以下のように `d-(d-1)` の差が B を超える場合も `Yes` とするようにしたら全て AC になった

```ruby
day_of_weeks = D.map { |d| d % (A+B) == 0 ? A+B : d % (A+B) }.uniq.sort

if day_of_weeks.max - day_of_weeks.min < A
  puts "Yes"
  exit
end

(1..(day_of_weeks.size-1)).each do |i|
  if day_of_weeks[i] - day_of_weeks[i-1] > B
    puts "Yes"
    exit
  end
end

puts "No"
```
