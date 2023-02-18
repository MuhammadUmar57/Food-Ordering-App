import 'package:flutter/material.dart';

class Cart {
  final List myItems = [
    ["Pizza", "15.00"],
    ["Burger", "10.00"],
    ["Wrap", "6.00"],
    ["Spaguetti", "15.00"],
    ["Fries", "4.00"],
    ["Cream", "4.00"],
    ["Margritta", "4.00"],
    ["Tea", "4.00"],
  ];
  List cartItems = [];
  // ignore: recursive_getters
  get items => myItems;
  get cartitems => cartItems;

  void addtoCart(int index) {
    cartItems.add((myItems[index][1]));
  }
}
