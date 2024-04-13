#!/usr/bin/env ruby
S = gets.chomp.split("")

hash = Hash.new(0)

S.each do |s|
  hash[s] += 1
end


n_hash = Hash.new([])
S.uniq.each do |s|
  n_hash[hash[s]] += [s]
end

n_hash.each do |k, v|
  if v.size != 2
    puts 'No'
    exit
  end
end

puts 'Yes'