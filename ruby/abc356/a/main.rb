N, L, R = gets.chomp.split.map(&:to_i)

A = (1..N).to_a

l = L - 1
r = R - 1
subarray = A[l..r].reverse
A[l..r] = subarray

puts A.join(" ")