#include <vector>
#include <algorithm>
#include <iostream>


using namespace std;

class Heap {
private:
    vector<int> heap;
    int parent(int i) { return (i - 1) / 2; }
    int leftChild(int i) { return 2 * i + 1; }
    int rightChild(int i) { return 2 * i + 2; }
    void siftUp(int i);
    void siftDown(int i);
public:
    Heap() {}
    void insert(int price);
    void deletePrice(int price);
    int getTopOfBook();
};

void Heap::insert(int price) {
    heap.push_back(price);
    int index = heap.size() - 1;
    siftUp(index);
}

void Heap::siftUp(int i) {
    while (i != 0 && heap[parent(i)] < heap[i]) {
        swap(heap[parent(i)], heap[i]);
        i = parent(i);
    }
}

void Heap::deletePrice(int price) {
    int index = find(heap.begin(), heap.end(), price) - heap.begin();
    swap(heap[index], heap.back());
    heap.pop_back();
    siftDown(index);
}

void Heap::siftDown(int i) {
    int left = leftChild(i);
    int right = rightChild(i);
    int largest = i;

    if (left < heap.size() && heap[left] > heap[i])
        largest = left;

    if (right < heap.size() && heap[right] > heap[largest])
        largest = right;

    if (largest != i) {
        swap(heap[i], heap[largest]);
        siftDown(largest);
    }
}

int Heap::getTopOfBook() {
    return heap.front();
}
