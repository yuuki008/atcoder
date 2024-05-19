#!/usr/bin/env ruby
N = gets.chomp.to_i

(N+1).times.each do |n|
  (N+1).times.each do |m|
    break if n + m > N
    (N+1).times.each do |l|
      break if n + m + l > N
      puts "#{n} #{m} #{l}"
    end
  end
end