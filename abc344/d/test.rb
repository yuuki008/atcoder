#!/usr/bin/env ruby
# easy problem
# T = 'aaabbbbcccc'
# N = 6
# AA = [
# ['aa', 'aaa'],
# ['dd', 'ddd'],
# ['ab', 'aabb'],
# ['bbaa', 'bbbc', 'bbb', 'bbcc'],
# ['cc',' bcc'],
# ['ccc', 'cccc', 'ccccc']
# ]

# tle proble
N = 100
AA = 100.times.map {
  rand(1..10).times.map do
    length = rand(1..10)
    (1..length).map { ('a'..'z').to_a[rand(26)] }.join
  end
}
T = AA[0][0] + AA[-1][-1]

dp = Array.new(N+1) { Array.new(T.size+1, 1e9) }

dp[0][0] = 0

N.times do |i|
  T.size.times do |j|
    dp[i+1][j] = [dp[i+1][j], dp[i][j]].min
    AA[i].each do |a|
      if T[j..-1].start_with?(a)
        dp[i+1][j+a.size] = [dp[i+1][j+a.size], dp[i][j]+1].min
      end
    end
  end
end

ans = dp.map { |e| e[T.size] }.min

puts ans == 1e9 ? -1 : ans