#!/usr/bin/env ruby
H, W = gets.chomp.split.map(&:to_i)
CW = H.times.map { gets.chomp.split('') }

$seen = Array.new(H) { Array.new(W, false) }

$vectors = [[0,1],[0,-1],[1,0],[-1,0]]

def dfs(h,w)
  $seen[h][w] = true

  $vectors.each do |dh,dw|
    nh = h + dh
    nw = w + dw

    next if nh < 0 || nh >= H || nw < 0 || nw >= W
    next if $seen[nh][nw]
    next if CW[nh][nw] == '#'

    dfs(nh,nw)
  end
end

sh, sw, gh, gw = [0, 0, 0, 0]

CW.each_with_index do |row, h|
  if row.include?('s')
    sh = h
    sw = row.index('s')
  end

  if row.include?('g')
    gh = h
    gw = row.index('g')
  end
end

dfs(sh,sw)

puts $seen[gh][gw] ? "Yes" : "No"

