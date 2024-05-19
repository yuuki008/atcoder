#!/usr/bin/env ruby
B, G = gets.chomp.split(" ").map(&:to_i)

puts B > G ? "Bat" : "Glove"