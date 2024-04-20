#!/usr/bin/env ruby
S = gets.chomp


contest = S[3..5].to_i 

if contest >= 1 && contest <= 349 && contest != 316
  puts 'Yes'
else
  puts 'No'
end
