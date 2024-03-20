#!/usr/bin/env ruby
N = gets.chomp.to_i
D = N.times.map { gets.chomp.to_i }.sort.reverse

kagami_mochi = [D[0]]
for d in D[1..-1] do
  if kagami_mochi[-1] > d
    kagami_mochi << d
  end
end

puts kagami_mochi.size