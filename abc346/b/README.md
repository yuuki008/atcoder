# 問題文

https://atcoder.jp/contests/abc346/tasks/abc346_b

# ノート

ランダムな文字ではなく `wbwbwwbwbwbw` の繰り返しで無限に続いたとしても (W+B) 個の文字列のパターンは 12 個しかない。
よって `wbwbwwbwbwbw` を配列で回して (W+B) 個先までの部分文字列の w と b の個数が W, B と同じになるか判定するだけでいい。

W と B は最大で 100 なので S の文字数は最大でも 200 文字となる。
しかし `wbwbwwbwbwbw` の文字数を 14 文字あると勘違いしていたため、 以下のように S の文字数が 168 文字となり、答えが間違ってしまった。
`S = "wbwbwwbwbwbw" * 14`
