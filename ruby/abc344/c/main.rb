#!/usr/bin/env ruby
N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
M = gets.chomp.to_i
B = gets.chomp.split.map(&:to_i)
L = gets.chomp.to_i
C = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i
X = gets.chomp.split.map(&:to_i)

all_patterns = {}

for a in A
  for b in B
    for c in C
      all_patterns[a + b + c] = true
    end
  end
end

X.each do |x|
  if all_patterns[x]
    puts "Yes"
  else
    puts "No"
  end
end