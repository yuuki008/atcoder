#include <iostream>
#include <vector>
#include <queue>
#include <stack>
#include <cctype>

using namespace std;

int main() {
  string s;
  getline(cin, s);

  // 大文字の方が多ければ全てを大文字にする。そうでなければ全てを小文字にする。

  int upper = 0;
  int lower = 0;
  for(int i=0;i<s.size();i++) {
    if(isupper(s[i])) {
      upper++;
    } else {
      lower++;
    }
  }

  if(upper > lower) {
    for(int i=0;i<s.size();i++) {
      s[i] = toupper(s[i]);
    }
  } else {
    for(int i=0;i<s.size();i++) {
      s[i] = tolower(s[i]);
    }
  }

  cout << s << endl;
}