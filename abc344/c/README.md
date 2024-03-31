# 問題

https://atcoder.jp/contests/abc344/tasks/abc344_c

# ノート

```ruby
all_patterns = []

for a in A
  for b in B
    for c in C
      all_patterns << a + b + c
    end
  end
end

all_patterns.uniq!

X.each do |x|
  if all_patterns.include?(x)
    puts "Yes"
  else
    puts "No"
  end
end
```

これだと TLE 。
最後の X.each のところで X ** all_patterns の計算量が発生してる。
X は 10 ** 5 で all_patterns は 10 \*\* 8 なので計算量が多すぎる。

```ruby
all_patterns = [false] * 1000000

for a in A
  for b in B
    for c in C
      all_patterns[a + b + c] = true
    end
  end
end

X.each do |x|
  if all_patterns[x]
    puts "Yes"
  else
    puts "No"
  end
end
```

次に index でアクセスするようにして計算量を 10 ** 5 に。
ただこれだと MLE が発生。
`[false] ** 10000000` が原因っぽい

```ruby
all_patterns = {}

for a in A
  for b in B
    for c in C
      all_patterns[a + b + c] = true
    end
  end
end

X.each do |x|
  if all_patterns[x]
    puts "Yes"
  else
    puts "No"
  end
end
```

ハッシュに格納するにして AC
