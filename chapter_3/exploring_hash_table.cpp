#include <unordered_map>
#include <list>

class Order {
public:
    int id;
    double price;
    int quantity;
    // constructor, getters, and setters omitted for brevity
};

class OrderBook {
private:
    std::unordered_map<double, std::list<Order>> book;
public:
    void addOrder(Order order) {
        book[order.price].push_back(order);
    }
    void removeOrder(Order order) {
        book[order.price].remove(order);
    }
    std::list<Order> getOrdersAtPrice(double price) {
        return book[price];
    }
    double getTopOfBook() {
        if (book.empty()) {
            return -1; // or throw an exception
        }
        auto it = book.begin();
        double top = it->first;
        for (; it != book.end(); ++it) {
            if (it->first > top) {
                top = it->first;
            }
        }
        return top;
    }
};
