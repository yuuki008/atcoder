#include <iostream>
#include <map>
#include <vector>
#include <algorithm>
#include <string>
#include <cmath>
#include <iomanip>
using namespace std;

int main() {
  int N, A;
  cin >> N >> A;

  vector<int> T(N);
  for(int i=0; i<N; i++) cin >> T[i];


  int time=0;
  for(int i=0; i<N; i++) {
    int visit_time=T[i];

    if (visit_time > time) time = visit_time;
    time += A;

    cout << time << endl;
  };

  return 0;
}
