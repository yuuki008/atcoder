#!/usr/bin/env ruby
N, A, B = gets.chomp.split(" ").map(&:to_i)
D = gets.chomp.split(" ").map(&:to_i)

day_of_weeks = D.map { |d| d % (A+B) == 0 ? A+B : d % (A+B) }.uniq.sort

if day_of_weeks.max - day_of_weeks.min < A
  puts "Yes"
  exit
end

(1..(day_of_weeks.size-1)).each do |i|
  if day_of_weeks[i] - day_of_weeks[i-1] > B
    puts "Yes"
    exit
  end
end

puts "No"