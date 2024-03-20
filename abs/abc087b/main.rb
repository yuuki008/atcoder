#!/usr/bin/env ruby
GOHYAKU = gets.chomp.to_i
HYAKU = gets.chomp.to_i
GOJUU = gets.chomp.to_i
X = gets.chomp.to_i

count = 0

def over_x?(num)
  num > X
end

for i in 0..GOHYAKU do
  gohyaku = 500 * i
  break if over_x?(gohyaku)
  for j in 0..HYAKU do
    gohyaku_hyaku = gohyaku + 100 * j
    break if over_x?(gohyaku_hyaku)
    for k in 0..GOJUU do
      gohyaku_hyaku_gojuu = gohyaku_hyaku + 50 * k
      break if over_x?(gohyaku_hyaku_gojuu)
      count += 1 if gohyaku_hyaku_gojuu == X
    end
  end
end

puts count