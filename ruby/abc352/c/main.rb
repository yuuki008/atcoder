#!/usr/bin/env ruby
N = gets.chomp.to_i
AB = N.times.map { gets.chomp.split.map(&:to_i) }


shoulder_to_head_sizes = AB.map { |a, b| b - a }
top_giant = shoulder_to_head_sizes.index(shoulder_to_head_sizes.max)

puts AB.sum { |a, b| a } +(AB[top_giant][1] - AB[top_giant][0])