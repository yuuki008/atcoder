#!/usr/bin/env ruby
X = gets.chomp.to_i
last = X.to_s[-1].to_i

x_div_10 = X / 10
x_mod_10 = X % 10

if x_mod_10 === 0 
  puts x_div_10 
else
  puts x_div_10 + 1
end

