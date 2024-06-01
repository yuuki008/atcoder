N, T = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

x_hash = Hash.new { 0 }
y_hash = Hash.new { 0 }
diag1_count = 0
diag2_count = 0

A.each_with_index do |a, i|
  x = (a - 1) % N
  y = (a - 1) / N

  x_hash[x] += 1
  y_hash[y] += 1

  if x == y
    diag1_count += 1
  end

  if x + y == N - 1
    diag2_count += 1
  end

  if x_hash[x] == N || y_hash[y] == N || diag1_count == N || diag2_count == N
    puts i + 1
    exit
  end
end

puts -1
