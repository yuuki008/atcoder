#!/usr/bin/env ruby
A, B = gets.chomp.split.map(&:to_i)

if A ==B
  puts -1
  exit
end

[1, 2, 3].each do |i|
  if i != A && i != B
    puts i
    break
  end
end
