#!/usr/bin/env ruby
# wbwbwwbwbwbw が永遠に続く文字列で W 個の w と B 個の b を持つ部分文字列が存在しているかどうかを判定する
keyword = "wbwbwwbwbwbw"
W, B = gets.chomp.split(" ").map(&:to_i)

S = keyword * 20

keyword.each_char.with_index do |c, i|
  substring = S[i..i+W+B-1]
  w_count = substring.count("w")
  if w_count == W
    puts "Yes"
    exit
  end
end

puts "No"