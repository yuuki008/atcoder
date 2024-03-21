#!/usr/bin/env ruby
S = gets.chomp

first = S.slice!(0)
last = S.slice!(-1)

if first === "<" && last === ">" && S.each_char.all? { |c| c === "=" }
  puts "Yes"
else
  puts "No"
end