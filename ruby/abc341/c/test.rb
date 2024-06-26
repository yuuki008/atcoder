H,W,N = 13, 16, 9
T = 'ULURDLURD'.split("")
S = [
['#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#'],
['#','#','.','.','#','#','.','#','.','.','#','#','#','#','.','#'],
['#','#','#','.','#','.','.','#','.','.','.','.','.','#','.','#'],
['#','.','.','#','#','.','.','#','#','#','#','#','.','#','#','#'],
['#','.','.','.','#','.','.','#','.','.','.','.','.','.','#','#'],
['#','#','#','.','#','#','.','#','.','.','#','.','.','.','.','#'],
['#','#','.','#','#','#','#','#','.','.','.','.','#','#','.','#'],
['#','#','#','.','#','#','#','.','#','.','#','.','#','.','.','#'],
['#','#','#','#','#','#','.','.','.','.','.','#','#','.','.','#'],
['#','.','.','.','#','.','#','.','#','#','#','#','#','#','.','#'],
['#','#','.','.','#','#','#','.','.','#','.','.','#','.','#','#'],
['#','.','.','.','#','.','#','.','#','.','.','.','#','.','.','#'],
['#','#','#','#','#','#','#','#','#','#','#','#','#','#','#','#'],
]

$ans = 0

def main(h,w)
  if cnt == N
    $ans += 1
  end
end

(1..H-2).each do |h|
  (1..W-2).each do |w|
    next if S[h][w] == '#'
    main(h, w)
  end
end

puts $ans