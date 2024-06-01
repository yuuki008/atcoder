N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
X = N.times.map { gets.chomp.split.map(&:to_i) }

nutoritions = [0] * M

X.each do |x|
  x.each_with_index do |v, i|
    nutoritions[i] += v
  end
end

nutoritions.each_with_index do |v, i|
  if v < A[i]
    puts "No"
    exit
  end
end

puts "Yes"

