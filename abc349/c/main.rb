#!/usr/bin/env ruby
S = gets.chomp.split("")
T = gets.chomp.split("").map(&:downcase)

t_hash = Hash.new(0)

if T[-1] == 'x'
  T.pop
end

S.each do |s|
  if T[0] == s
    T.shift
  end
end

if T.empty?
  puts "Yes"
else
  puts "No"
end

