import 'package:awademo/screens/checkout/checkout.dart';
import 'package:awademo/widgets/appbar/appbar.dart';
import 'package:awademo/widgets/cart/cart_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:TCartItems(),
      ),


      ///checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade300),
            onPressed: () {
              Get.to(()=>CheckoutScreen());
            },
            child: Text(
              "Checkout Rs12456",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            )),
      ),
    );
  }
}
