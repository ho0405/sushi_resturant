import 'package:flutter/material.dart';
import 'package:sushi_resturant/components/button.dart';
import 'package:sushi_resturant/models/shop.dart';
import 'package:sushi_resturant/theme/colors.dart';
import 'package:provider/provider.dart';
import '../models/food.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

// remove from cart
  void removeFromCart() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          title: const Text("My Cart"),
          elevation: 0,
          backgroundColor: primaryColor,
        ),
        body: Column(
          children: [
            // CUSTOMER CART

            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                // get food from cart
                final Food food = value.cart[index];

                // get food name
                final String foodName = food.name;

                // get food price
                final String foodPrice = food.price;

                // return list tile
                return Container(
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: ListTile(
                    title: Text(
                      foodName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      foodPrice,
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.grey[300],
                      ),
                      onPressed: removeFromCart,
                    ),
                  ),
                );
              }),
            ),
            // PAY BUTTON
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyButton(
                text: "Pay Now",
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
