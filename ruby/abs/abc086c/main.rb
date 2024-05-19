#!/usr/bin/env ruby
N = gets.chomp.to_i
points = N.times.map do |i|
  gets.chomp.split.map(&:to_i)
end

prev_x = prev_y = prev_time = 0

for point in points do
  time = (point[0] - prev_time).abs
  x = (point[1] - prev_x).abs
  y = (point[2] - prev_y).abs

  if time < x + y
    puts "No"
    exit
  end

  if (x + y + time) % 2 != 0
    puts "No"
    exit
  end

  prev_x, prev_y, prev_time = x, y, time
end

puts 'Yes'


# 以下の条件を持っていれば到着できる
# 1. 最短到着時間が到着時間よりも遅い
# 2. 座標と到着時間の偶奇が一致している

# 最初 1 の判定で到着時間を現在の座標を足したもの (x + y) としていたが、これだとスタート地点から到着できるが前回地点からは到着できない場合に対応できない。
# 以下のようにスタート地点から [6,0,0] に行くことはできるが、前回地点 [4,2,2] から [6,0,0] に行くことはできない場合は、本来であれば到着できないと判定する必要がある。
# 経由回数: 2
# 地点: [4, 2, 2], [6, 0, 0]
# このようにするには前回地点を保持しておき、現在地点との差分から到着の可否を判定する必要があった。