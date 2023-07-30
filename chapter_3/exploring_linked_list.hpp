#pragma once
#include <iostream>

class Node {
public:
    int price;
    Node* next;

    Node(int p) {
        price = p;
        next = NULL;
    }
};


class LinkedList {
public:
    Node* head;
    LinkedList() : head(nullptr) {}
  
    void addOrder(Node*& head, int price) {
        Node* newNode = new Node(price);
        if (head == NULL || head->price >= price) {
            newNode->next = head;
            head = newNode;
        } else {
            Node* current = head;
            while (current->next != NULL && current->next->price < price) {
                current = current->next;
            }
            newNode->next = current->next;
            current->next = newNode;
        }
    }
  
    void deleteOrder(Node*& head, int price) {
        if (head == NULL) return;
        if (head->price == price) {
            Node* temp = head;
            head = head->next;
            delete temp;
            return;
        }
        Node* current = head;
        while (current->next != NULL && current->next->price != price) {
            current = current->next;
        }
        if (current->next != NULL) {
            Node* temp = current->next;
            current->next = current->next->next;
            delete temp;
        }
    }

    int getTopOfBook(Node* head) {
        if (head == NULL) {
            throw "Order book is empty";
        }
        return head->price;
    }

    void printList() {
        Node* node = head;
        while (node != nullptr) {
            std::cout << node->price << " ";
            node = node->next;
        }
    }
};
