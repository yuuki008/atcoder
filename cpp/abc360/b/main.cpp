#include <iostream>
#include <string>

bool check(const std::string& S, const std::string& T) {
    int s_len = S.length();
    int t_len = T.length();

    for (int w = 1; w < s_len; ++w) {
        for (int c = 1; c <= w && c <= s_len; ++c) {
            std::string constructed;
            for (int i = c - 1; i < s_len; i += w) {
                if (i < s_len) {
                    constructed += S[i];
                }
            }
            if (constructed == T) {
                return true;
            }
        }
    }
    return false;
}

int main() {
    std::string S, T;
    std::cin >> S >> T;

    if (check(S, T)) {
        std::cout << "Yes" << std::endl;
    } else {
        std::cout << "No" << std::endl;
    }

    return 0;
}

