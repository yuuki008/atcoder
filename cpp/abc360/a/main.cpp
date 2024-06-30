#include <cstdlib>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  while (true) {
    char val;
    cin >> val;

    if(val == 'R') {
      cout << "Yes" << endl;
      break;
    }
    if (val == 'M') {
      cout << "No" << endl;
      break;
    }
  }
  return 0;
}
