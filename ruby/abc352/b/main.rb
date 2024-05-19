#!/usr/bin/env ruby
S = gets.chomp
T = gets.chomp

# S = 'abc'
# T = 'axbxyc'


j = 0
ans = []
S.each_char.with_index do |c, i|
  while c != T[j] && j < T.size
    j += 1
  end

  ans << j + 1
  j += 1
end

puts ans.join(" ")