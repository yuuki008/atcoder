#include <iostream>
#include <vector>
#include <queue>
#include <stack>
#include <cctype>
#include <cmath>

using namespace std;

int main () {
  int n;
  cin >> n;
  
  int size = pow(3, n);
  vector<vector<string>> grid(size, vector<string>(size, "#"));

  int g=1;
  
  while (g <= n) {
    int tmp = pow(3, g);

    for (int i=0;i<size;i+=tmp) {
      for (int j=0;j<size;j+=tmp) {
        for (int k=i+tmp/3;k<i+tmp/3*2;k++) {
          for (int l=j+tmp/3;l<j+tmp/3*2;l++) {
            grid[k][l] = ".";
          }
        }
      }
    }
    g++;
  }

  for (int i=0;i<size;i++) {
    for (int j=0;j<size;j++) {
      cout << grid[i][j];
    }
    cout << endl;
  }
  return 0;
}