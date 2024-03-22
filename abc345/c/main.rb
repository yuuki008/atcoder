#!/usr/bin/env ruby
S = gets.chomp
N = S.size

patterns = []
for i in 0..N-1 do
  for j in i..N-1 do
    if i == j
      next
    end
cases  = [
'a', # 0
'aaaaaa', # 1
'abcd', # 6
'aabbcc', # 6
'abcde', # 10
'abcabc', # 9
]


def factorial(n)
  (1..n).reduce(1, :*)
end

puts "========= 別解 1 ========="
cases.each do |s|
  uniq_s = s.chars.uniq
  combinations = factorial(uniq_s.size) / (factorial(2) * factorial(uniq_s.size - 2))

  for u_s in uniq_s do
    u_s_count = s.count(u_s)
    if u_s_count > 1
      combinations += 1
    end
  end
  
  puts "#{s}: #{combinations}"
end

puts patterns.size