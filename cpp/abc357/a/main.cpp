#include <iostream>
#include <vector>
#include <queue>
#include <stack>

using namespace std;

int main() {
  int n, m;
  cin >> n >> m;

  vector<int> H(n);

  int cnt = 0;
  for(int i=0;i<n;i++) {
    int h;
    cin >> h;

    m -= h;
    if(m >= 0)
    cnt++;
  }

  cout << cnt << endl;
  return 0;
}