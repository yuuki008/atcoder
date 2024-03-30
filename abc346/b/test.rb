#!/usr/bin/env ruby

require_relative 'expected.rb'


def main(w, b)
  keyword = "wbwbwwbwbwbw"
  s = keyword * 16
  
  keyword.each_char.with_index do |c, i|
    substring = s[i..i+w+b-1]
    w_count = substring.count("w")
    if w_count == w
      return true
    end
  end
  
  return false
end

for i in 50..100
  for j in 50..100
    bool = main(i, j)
    expected = expected_patterns.select { |pattern| pattern[:W] == i && pattern[:B] == j }[0]

    if bool != expected[:result]
      puts "Error: W=#{i}, B=#{j}, expected=#{expected[:result]}, got=#{bool}"
    end
  end
end