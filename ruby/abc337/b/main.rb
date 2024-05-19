#!/usr/bin/env ruby
S = gets.chomp.split('')

a_c = S.count('A')
b_c = S.count('B')
c_c = S.count('C')

"A" * a_c + "B" * b_c + "C" * c_c == S.join('') ? puts("Yes") : puts("No")
