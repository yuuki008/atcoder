#!/usr/bin/env ruby
N = gets.chomp.to_i
A = N.times.map { gets.chomp }
B = N.times.map { gets.chomp }

N.times.each do |i|
  next if A[i] == B[i]

  N.times.each do |j|
    if A[i][j] != B[i][j]
      puts "#{i+1} #{j+1}"
      exit
    end
  end
end
