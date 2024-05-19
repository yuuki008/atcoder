#!/usr/bin/env ruby
N = gets.chomp.to_i
XY = N.times.map { gets.split.map(&:to_i) }

XY.each.with_index do |(x, y), i|
  max_distance = 0
  farthest_coordinate = 0

  for j in 0..N-1
    x_2 = XY[j][0]
    y_2 = XY[j][1]

    distance = Math.sqrt((x - x_2) ** 2 + (y - y_2) ** 2)

    if distance > max_distance
      max_distance = distance

      farthest_coordinate = j + 1
    end
  end

  puts farthest_coordinate
end