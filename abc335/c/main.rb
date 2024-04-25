#!/usr/bin/env ruby
N, Q = gets.chomp.split.map(&:to_i)
Queries = Q.times.map { gets.chomp.split }

A = N.times.map { |i| [i+1, 0]}

Queries.each do |q|
  if q[0] == '1'
    a = A[0].dup

    if q[1] == 'U'
      a[1] += 1
    elsif q[1] == 'D'
      a[1] -= 1
    elsif q[1] == 'L'
      a[0] -= 1
    elsif q[1] == 'R'
      a[0] += 1
    end

    A.unshift(a)
    A.pop
    
  elsif q[0] == '2'
    puts A[q[1].to_i-1].join(' ')
  end
end
