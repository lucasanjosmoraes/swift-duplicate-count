//
// Created by Lucas dos Anjos Moraes on 2019-05-27.
//

#include "duplicate_count.hpp"

namespace manipulation {

    StringManipulation::StringManipulation() = default;

    size_t StringManipulation::duplicateCount(const char *in) {
        // Dictionary with letters as keys and it repetitions as values
        std::unordered_map<std::string, int> dict;

        while (*in) {
            char lower = char(tolower(*in));

            std::string strLower(1, lower);

            if (strLower == " ") {
                in++;
                continue;
            }

            int count = dict.count(strLower);

            if (count == 0) {
                dict.insert({strLower, 1});
            } else {
                dict[strLower] = dict[strLower] + 1;
            }

            in++;
        }

        int result = 0;
        for (auto& it: dict) {
            if (dict[it.first] > 1) result++;
        }

        return result;
    }
}


