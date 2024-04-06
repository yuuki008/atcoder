#!/usr/bin/env ruby
N = gets.chomp.to_i

ans = []
N.times do |i|
  A = gets.chomp.split.map(&:to_i)

  temp = []
  A.each.with_index do |a, i|
    if a == 1
      temp.push(i+1)
    end
  end

  next if temp.size == 0

  ans.push(temp)
end

if ans.size == 0
  puts ''
  exit
end

ans.each do |a|
  puts a.join(' ')
end