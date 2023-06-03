#include <iostream>
#include <array>

int main() {
    std::array<int, 5> arr = {1, 2, 3, 4, 5};
    arr[0] = 7; // O(1) for accessing
    arr.insert(arr.begin() + 3, 6); // O(n) for inserting
    arr.erase(arr.begin() + 2); // O(n) for deleting
    return 0;
}
