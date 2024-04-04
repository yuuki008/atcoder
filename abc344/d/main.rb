#!/usr/bin/env ruby
T = gets.chomp
N = gets.chomp.to_i
AA = (1..N).map { gets.chomp.split[1..-1]}

$hash = {}

def recursive(i, substring, times)
  times = $hash[substring].nil? ? times : [$hash[substring], times].min
  $hash[substring] = times

  return if AA[i].nil?

  for a in AA[i]
    recursive(i+1, substring+a, times+1)
    recursive(i+1, substring, times)
  end
end

for a in AA[0]
  recursive(1, a, 1)
end


puts $hash[T] || -1