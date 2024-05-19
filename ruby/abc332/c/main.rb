#!/usr/bin/env ruby
N, M = gets.chomp.split.map(&:to_i)
S = gets.chomp.split("").map(&:to_i)

# 0は予定なし
# 1は食事の予定
# 2は競技プログラミングの予定

ans = 0
cnt = 0
cnt_1 = 0
S.each do |s|
  if s == 1
    cnt_1 += 1
    cnt += 1 if cnt_1 > M
  end

  if s == 2
    cnt += 1
  end

  if s == 0
    ans = [ans, cnt].max
    cnt_1 = 0
    cnt = 0
  end
end

puts [ans, cnt].max