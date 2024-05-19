#!/usr/bin/env ruby
A = 10.times.map { gets.chomp.chars }


$cnt = 0
A.each do |row|
  $cnt += row.count('o')
end

$seen = Array.new(10) { Array.new(10, false) }

def main(i, j)
  $seen = Array.new(10) { Array.new(10, false) }

  def dfs(i, j)
    $seen[i][j] = true

    [[1, 0], [-1, 0], [0, 1], [0, -1]].each do |di, dj|
      ni = i + di
      nj = j + dj

      next if ni < 0 || ni >= 10 || nj < 0 || nj >= 10
      next if $seen[ni][nj]
      next if A[ni][nj] == 'x'

      dfs(ni, nj)
    end
  end

  dfs(i, j)

  tmp = 0
  $seen.each do |row|
    tmp += row.count(true)
  end

  if tmp == $cnt + 1
    puts 'YES'
    exit
  end
end

A.each_with_index do |row, i|
  row.each_with_index do |cell, j|
    if cell == 'x'
      A[i][j] = 'o'
      main(i, j)
      A[i][j] = 'x'
    end
  end
end

puts 'NO'
