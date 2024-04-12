#!/usr/bin/env ruby
N = gets.chomp.to_i
S = gets.chomp.split("")
Q = gets.chomp.to_i
CD = Q.times.map { gets.chomp.split }

hash = Hash.new([])
S.each.with_index do |s, i|
  hash[s] += [i]
end

CD.each do |(c, d)|
  next if c == d

  if hash[d].nil?
    hash[d] = hash[c]
  else
    hash[d] += hash[c]
  end

  hash.delete(c)
end

ans = [""] * N

hash.each do |k, v|
  v.each do |i|
    ans[i] = k
  end
end

puts ans.join