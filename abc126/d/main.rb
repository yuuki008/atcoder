#!/usr/bin/env ruby
N = gets.chomp.to_i
@edges = Array.new(N) { [] }
@ans = Array.new(N)

(N - 1).times do
  u, v, w = gets.chomp.split.map(&:to_i)
  @edges[u - 1] << [v - 1, w]
  @edges[v - 1] << [u - 1, w]
end

def dfs(u, c)
  @ans[u] = c

  @edges[u].each do |v, w|
    next if @ans[v]

    w.even? ? dfs(v, c) : dfs(v, 1 - c)
  end
end

dfs(0, 0)

puts @ans.join("\n")
