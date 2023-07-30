#pragma once
#include <map>
#include <list>

namespace hash_table
{
class Order {
public:
    int id;
    double price;
    int quantity;

    Order() : id(0), price(0), quantity(0) {}
    Order(int id, double price, int quantity) : id(id), price(price), quantity(quantity) {}
    void reset()
    {
        id=0;
        price=0.0;
        quantity=0.0;
    }
};

class LimitOrderBook {
private:
    std::map<double, Order> book_bids;
    std::map<double, Order> book_offers;
    int _depth;
public:
    LimitOrderBook() {}
    LimitOrderBook(int precision, int depth): _depth(depth) {}


    void add_order(const Order& order, bool is_bid) {
        if (is_bid)
        {
            if (book_bids.size() > _depth)
                book_bids.erase(book_bids.begin());
            book_bids[order.price] = order;
        }
        else
        {
            if (book_offers.size() > _depth)
                book_offers.erase(book_offers.cbegin());
            book_offers[order.price] = order;
        }
    }
    void delete_order(const Order& order, bool is_bid) {
        if (is_bid)
            book_bids.erase(order.price);
        else
            book_offers.erase(order.price);
    }
    void update_order(const Order& order, bool is_bid){
        delete_order(order, is_bid);
        add_order(order, is_bid);
    }


    Order get_best_bid() {
        return book_bids.cbegin()->second;
    }
    Order get_lowest_bid() {
        return book_bids.begin()->second;
    }


    Order get_best_offer() {
        return book_bids.begin()->second;
    }
    Order get_highest_offer() {
        return book_bids.cbegin()->second;
    }

    void print_bids()
    {
    }
    void print_offers()
    {
    }

};
}