
#include <iostream>
#include <vector>
#include <climits>
#include <string>
using namespace std;

int main() {
  int n, m;
  cin >> n >> m;
  cin.ignore();

  vector<string> S(n);
  for (int i = 0; i < n; i++) getline(cin, S[i]);

  vector<int> masks(n, 0);

  for (int i = 0; i < n; ++i) {
    for (int j = 0; j < m; ++j) {
      if (S[i][j] == 'o') {
        masks[i] |= (1 << j);
      }
    }
  }

  int min_operations = INT_MAX;

  for (int i = 1; i < (1 << n); ++i) {
    int combined_mask = 0;
    int count = 0;

    for (int j = 0; j < n; ++j) {
      if (i & (1 << j)) {
        combined_mask |= masks[j];
        count++;
      }
    }

    if (combined_mask == (1 << m) - 1) {
      min_operations = min(min_operations, count);
    }
  }

  cout << min_operations << endl;

  return 0;
}

