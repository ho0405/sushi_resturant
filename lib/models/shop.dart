import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    //salmon sushi
    Food(
      name: "Salmon Sushi",
      price: "21.00",
      imagePath: "lib/images/salmon.png",
      rating: "4.9",
    ),

    //tuna sushi
    Food(
      name: "Tuna Sushi",
      price: "23.00",
      imagePath: "lib/images/tuna.png",
      rating: "4.7",
    ),
    //maki sushi
    Food(
      name: "Maki Sushi",
      price: "12.00",
      imagePath: "lib/images/maki.png",
      rating: "4.3",
    ),
    //bento
    Food(
      name: "Bento Special",
      price: "19.95",
      imagePath: "lib/images/bento.png",
      rating: "5.0",
    ),
  ];

  // customer cart
  List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
