#!/usr/bin/env ruby
N, A, B = gets.chomp.split(" ").map(&:to_i)

sum = 0

for n in 1..N do
  num = n.to_s.split("").map(&:to_i).sum
  if num >= A && num <= B
    sum += n
  end
end

puts sum