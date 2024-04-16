#!/usr/bin/env ruby
Q = gets.chomp.to_i
queries = Q.times.map { gets.split.map(&:to_i) }

A = []

ans = []
queries.each do |query|
  if query[0] == 1
    A << query[1]
  else
    ans << A[-query[1]]
  end
end

puts ans.join("\n")