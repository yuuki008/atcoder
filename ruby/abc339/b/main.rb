#!/usr/bin/env ruby
H, W, N = gets.split.map(&:to_i)

grid = Array.new(H){ ['.'] * W }
grid[0][0] = '#'

vectors = ['R', 'D', 'L', 'U']
v_i = 0
w = 0
h = 0

op = N
while op > 1
  op -= 1

  if vectors[v_i] == 'R'
    w = (w+1) % W
  elsif vectors[v_i] == 'D'
    h = (h+1) % H
  elsif vectors[v_i] == 'L'
    w = (w-1) % W
  elsif vectors[v_i] == 'U'
    h = (h-1) % H
  end

  if grid[h][w] == '.'
    grid[h][w] = '#'
    v_i = (v_i + 1) % 4
  else
    grid[h][w] = '.'
    v_i = (v_i - 1) % 4
  end
end

grid.each do |row|
  puts row.join
end