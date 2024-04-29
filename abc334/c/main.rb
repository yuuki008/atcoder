#!/usr/bin/env ruby
N, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

all = [2] * (N+1)

A.each do |a|
  all[a] -= 1
end

rest = []

all.each_with_index do |a, i|
  if a == 1
    rest << i
  end
end


if rest.length > 2 && rest.length % 2 != 0
  max_difference = nil
  max_index = nil

  rest.each_cons(2).with_index do |(a, b), index|
    difference = (a - b).abs
    if max_difference.nil? || difference > max_difference
      max_difference = difference
      max_index = index
    end
  end
  
  rest.delete_at(max_index)
end

ans = 0

if rest.length > 1
  (0..rest.length-1).step(2) do |i|
    ans += (rest[i+1] - rest[i]).abs
  end
end

puts ans