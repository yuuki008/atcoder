require_relative './input.rb'

hash = Hash.new(0)

S.each do |s|
  hash[s] += 1
end

t_hash = Hash.new(0)

T.each_with_index do |t, i|
  if i == 2 && t == 'x'
    break
  end

  t_hash[t] += 1
end


S.each do |s|
  if t_hash[s] == 0
    puts "No"
  end
end

puts "Yes"


