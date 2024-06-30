#include <climits>
#include <iostream>
#include <vector>
using namespace std;

/* INPUT */
/*  2  2 3  3 5 */
/* 33 40 2 12 6 */
int main() {
  /* int n=5; */
  /* vector<int> A = { 2, 2, 3, 3, 5 }; */
  /* vector<int> W = { 33, 40, 2, 12, 6 }; */

  int n;
  cin >> n;

  vector<int> A(n+1);
  for (int i=0; i<n; i++) cin >> A[i];

  vector<int> W(n+1);
  for (int i=0; i<n; i++) cin >> W[i];

  vector<vector<int>>tmp(n+1);
  for(int i=0; i<n; i++) {
    int v = A[i];
    tmp[v].push_back(W[i]);
  }

  int ans = 0;

  for(int i=1; i<n+1; i++) {
    if (tmp[i].size() < 2) continue;

    int max = INT_MIN;
    int sum = 0;
    for(vector<int>::size_type j=0; j<tmp[i].size();j++) {
      sum += tmp[i][j];
      if (tmp[i][j] > max) max = tmp[i][j];
    }
    ans += sum - max;
  }

  cout << ans << endl;
  return 0;
}
