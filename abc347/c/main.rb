#!/usr/bin/env ruby
N, A, B = gets.chomp.split(" ").map(&:to_i)
D = gets.chomp.split(" ").map(&:to_i)

d = []
w = A + B

D.each do |x|
  day = x % (A + B)
  d << day
  d << day + w
end

d.sort!

for i in 1..d.size - 1
  if d[i] - d[i-1] > B
    puts "Yes"
    exit
  end
end

puts "No"