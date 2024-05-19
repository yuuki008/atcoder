#!/usr/bin/env ruby
N = gets.chomp.split("")[0].to_i
A = gets.chomp.split(" ").map(&:to_i)

count = 0

def all_even?(arr)
  arr.each { |a| return false if a % 2 != 0 }
  return true
end

temp_arr = A
while all_even?(temp_arr) do
  temp_arr = temp_arr.map { |a| a / 2 }
  count += 1
end

puts count