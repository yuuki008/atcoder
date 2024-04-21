N = gets.to_i
A = [nil] + gets.split.map(&:to_i)
B = Array.new(N+1)

1.upto(N) do |i|
  B[A[i]] = i
end

ans = []
1.upto(N-1) do |i|
  a_tmp = A[i]
  b_tmp = B[i]
  ans << [i, B[i]]

  B[i] = i
  B[A[i]] = b_tmp
  A[i] = i
  A[B[i]] = a_tmp
end

ans.reject! { |a, b| a == b }

puts ans.size

ans.each do |ab|
  puts ab.join(' ')
end