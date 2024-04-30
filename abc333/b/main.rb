#!/usr/bin/env ruby
S1, S2 = gets.chomp.split("")
T1, T2 = gets.chomp.split("")

nodes = ['A', 'B', 'C', 'D', 'E']

S_distance = (nodes.index(S1) - nodes.index(S2)).abs
T_distance = (nodes.index(T1) - nodes.index(T2)).abs

S_distance = S_distance === 4 ? 1 : S_distance
T_distance = T_distance === 4 ? 1 : T_distance

if S_distance == 1 && T_distance == 1
  puts "Yes"
elsif S_distance != 1 && T_distance != 1
  puts "Yes"
else
  puts "No"
end

