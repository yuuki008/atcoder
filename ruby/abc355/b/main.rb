N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)

hash = {}

A.each do |a|
  hash[a] = "A"
end

B.each do |b|
  hash[b] = "B"
end

hash = hash.sort_by { |k, v| k }

last = nil
hash.each do |k, v|
  if v == "A" && last == "A"
    puts "Yes"
    exit
  end
  last = v
end

puts "No"
