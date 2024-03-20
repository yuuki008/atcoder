#!/usr/bin/env ruby
number, amount = gets.chomp.split(" ").map(&:to_i)

for man_num in 0..number do
  for gosen_num in 0..number - man_num do
    sen_num = number - man_num - gosen_num
    if (man_num * 10000 + gosen_num * 5000 + sen_num * 1000) == amount
      puts "#{man_num} #{gosen_num} #{sen_num}"
      exit
    end
  end
end

puts "-1 -1 -1"

# メモ
# 最初は万・五千・千円札の枚数を全探索したが TLE になった。
# 解説を読み、万札と五千円札の枚数が決まると、千円札の枚数は一意に決まると気づいた。
# 万札と五千円札で全探索を行い、残りの枚数が千円札の枚数として amount と一致するかを確認するようにした