#!/usr/bin/env ruby
# N = 10 ** 12
N = gets.to_i

quintal_num = (N-1).to_s(5)

puts quintal_num.chars.map { |n| n.to_i * 2 }.join()