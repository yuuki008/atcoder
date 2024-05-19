#!/usr/bin/env ruby
N = gets.chomp.to_i
AC = N.times.map { gets.chomp.split.map(&:to_i) }

hash = {}

AC.each do |a, c|
  if hash[c].nil?
    hash[c] = a
  else
    hash[c] = [hash[c], a].min
  end
end

puts hash.values.max || 0