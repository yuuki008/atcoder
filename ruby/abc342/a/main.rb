#!/usr/bin/env ruby
S = gets.chomp.split("")


hash = Hash.new(0)

S.each do |s|
  hash[s] += 1
end

S.each.with_index do |s, i|
  if hash[s] == 1
    puts i + 1
    exit
  end
end