#!/usr/bin/env ruby
N, Q = gets.chomp.split.map(&:to_i)
T = gets.chomp.split.map(&:to_i)

tooth = Array.new(N, true)

T.each do |t|
  if tooth[t-1] == true
    tooth[t-1] = false
  else
    tooth[t-1] = true
  end
end

puts tooth.select { |t| t === true }.size