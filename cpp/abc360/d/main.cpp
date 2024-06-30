#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int main() {
    int N, T;
    cin >> N >> T;
    string S;
    cin >> S;
    vector<int> X(N);
    for (int i = 0; i < N; i++) {
        cin >> X[i];
    }

    vector<pair<int, char>> ants(N);
    for (int i = 0; i < N; i++) {
        ants[i] = {X[i], S[i]};
    }

    sort(ants.begin(), ants.end());

    int count = 0;
    vector<int> right_facing;

    for (int i = 0; i < N; i++) {
        if (ants[i].second == '1') {
            right_facing.push_back(ants[i].first);
        } else {
            int pos = ants[i].first;
            auto it = lower_bound(right_facing.begin(), right_facing.end(), pos - 2 * T);
            count += distance(it, right_facing.end());
        }
    }

    cout << count << endl;
    return 0;
}

