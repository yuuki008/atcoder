#!/usr/bin/env ruby
S = gets.chomp

puts S[0].upcase == S[0] && S[1..-1].downcase == S[1..-1] ? 'Yes' : 'No'
