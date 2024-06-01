def valid_combination?(comb, tests, k)
  tests.each do |ci, ai, ri|
    correct_key_count = ai.count { |a| comb[a - 1] == 1 }
    return false if ri == 'o' && correct_key_count < k
    return false if ri == 'x' && correct_key_count >= k
  end
  true
end

# 標準入力からデータを読み取ります。
N, M, K = gets.split.map(&:to_i)
tests = []

M.times do
  ci, *ai, ri = gets.split
  ci = ci.to_i
  ai = ai.map(&:to_i)
  tests << [ci, ai, ri]
end

# 正しい鍵の組み合わせを数える変数
valid_count = 0

# 鍵の全組み合わせを試します。
(0...(1 << N)).each do |bits|
  # 鍵の組み合わせを配列として表現
  comb = bits.to_s(2).rjust(N, '0').chars.map(&:to_i)
  
  valid_count += 1 if valid_combination?(comb, tests, K)
end

puts valid_count
