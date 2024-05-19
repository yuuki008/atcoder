#!/usr/bin/env ruby
N = gets.to_i

$hash = Hash.new(nil)
def f(n)
  return 0 if (n == 1)
  return $hash[n] if $hash[n]
  return $hash[n] = f(n/2) + f((n+1)/2) + n
end

f(N)

puts $hash[N]