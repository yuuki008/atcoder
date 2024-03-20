#!/usr/bin/env ruby
N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

alice = 0
bob = 0

def alice_turn?(n)
  n % 2 == 0
end

for n in 0..N - 1 do
  max = A.max

  if alice_turn?(n)
    alice += max
  else
    bob += max
  end

  max_first_index = A.index(max)
  A.delete_at(max_first_index)
end

puts alice - bob