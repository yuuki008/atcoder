#!/usr/bin/env ruby
N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

def main(array)
  if array[-1] == array[-2] && array.size >= 2
    array.pop
    array[-1] += 1
    main(array)
  end
end

c = []
A.each do |a|
  c << a
  main(c)
end

puts c.size

