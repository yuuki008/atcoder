#!/usr/bin/env ruby
S = gets.chomp

while S.length > 0
  if S.end_with?("dream")
    S = S[0..-6]
  elsif S.end_with?("dreamer")
    S = S[0..-8]
  elsif S.end_with?("erase")
    S = S[0..-6]
  elsif S.end_with?("eraser")
    S = S[0..-7]
  else
    puts "NO"
    exit
  end
end

puts 'YES'