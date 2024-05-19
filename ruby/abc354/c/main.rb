#!/usr/bin/env ruby
N = gets.chomp.to_i
AC = N.times.map { gets.chomp.split.map(&:to_i) }

# インデックスを保持しながら力の降順、コストの昇順にソート
indexed_AC = AC.map.with_index { |(a, c), i| [a, c, i + 1] }
indexed_AC.sort_by! { |a, c, _| [-a, c] }

# 残すカードのインデックスを格納する配列
remaining_indices = []

# 最小コストを無限大に初期化
min_cost = Float::INFINITY

indexed_AC.each do |a, c, i|
  if c < min_cost
    min_cost = c
    remaining_indices << i
  end
end

# 結果を出力
puts remaining_indices.size
puts remaining_indices.sort.join(" ")