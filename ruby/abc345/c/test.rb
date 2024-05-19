#!/usr/bin/env ruby
def main(str)
  char_hash = Hash.new(0)
  char_len = str.length

  str.each_char do |c|
    char_hash[c] += 1
  end


  dup_exchange_num = char_hash.reduce(0) do |acc, (k, v)|
    acc + (v * (v-1)) / 2
  end

  str_c_2 = char_len * (char_len - 1) / 2
  str_c_2 - dup_exchange_num + 1
end




random_string = (0..1000000).map { ('a'..'z').to_a[rand(26)] }.join
cases  = [
{ name: 'aaa', input: 'aaa', expected: 1 },
{ name: 'abaa', input: 'abaa', expected: 4 },
{ name: 'abca', input: 'abca', expected: 5 },
{ name: 'accc', input: 'accc', expected: 4 },
{ name: 'abcabc', input: 'abcabc', expected: 13 },
{ name: 'abcabcabc', input: 'abcabcabc', expected: "?" },
{ name: 'abcdefga', input: 'abcdefga', expected: "?" },
# ランダム文字列を 1000 文字生成
# { name: 'random_string', input: random_string, expected: "?" },
# { name: 'abc...', input: 'abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabc', expected: "?" },
]

cases.each do |ca|
  input = ca[:input].dup

  combination_count = main(input)

  puts "#{ca[:name]}: expected: #{ca[:expected]} received: #{combination_count}"
end


