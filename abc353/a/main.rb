#!/usr/bin/env ruby
N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)

(1..N-1).each do |i|
  if H[0] < H[i]
    puts i+1
    exit
  end
end

puts -1
