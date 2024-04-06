#!/usr/bin/env ruby

N = gets.chomp.to_i

(1..Math.cbrt(N).to_i).reverse_each do |x|
  cube = x ** 3

  if cube.to_s == cube.to_s.reverse
    puts cube
    exit
  end
end