#!/usr/bin/env ruby

# 入力を受け取る
A, B, C, D = gets.chomp.split.map(&:to_i)
# A, B, C, D = -1, -2, 1, 3

# 黒の領域の面積を計算する関数
def black_area(a, b, c, d)
  total_cells = (c - a + 1).abs * (d - b + 1).abs
  black_cells = total_cells / 2

  # 左下のセルが黒の場合、黒のセルの数を調整
  if (a + b).even?
    black_cells += total_cells % 2
  end

  black_cells
end

# 黒の領域の面積を求めて2倍する
area = black_area(A, B, C, D)
puts area * 2