#!/usr/bin/env ruby
R, C = gets.split.map(&:to_i)
sx, sy = gets.split.map { |i| i.to_i - 1 }
gx, gy = gets.split.map { |i| i.to_i - 1 }
G = R.times.map { gets.chomp.chars }

dist = Array.new(R) { Array.new(C) { -1 } }

que = []

dist[sx][sy] = 0
que << [sx, sy]

while que.size > 0
  x, y = que.shift

  if x == gx && y == gy
    puts dist[x][y]
    exit
  end


  if G[x+1][y] == '.' && dist[x+1][y] == -1
    que << [x+1, y]
    dist[x+1][y] = dist[x][y] + 1
  end

  if G[x-1][y] == '.' && dist[x-1][y] == -1
    que << [x-1, y] 
    dist[x-1][y] = dist[x][y] + 1
  end

  if G[x][y+1] == '.' && dist[x][y+1] == -1
    que << [x, y+1] 
    dist[x][y+1] = dist[x][y] + 1
  end

  if G[x][y-1] == '.' && dist[x][y-1] == -1
    que << [x, y-1]
    dist[x][y-1] = dist[x][y] + 1
  end
end

