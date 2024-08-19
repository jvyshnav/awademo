import 'package:awademo/screens/home/home.dart';
import 'package:awademo/screens/success_screen/success_screen.dart';
import 'package:awademo/utils/navigation_menu.dart';
import 'package:awademo/widgets/appbar/appbar.dart';
import 'package:awademo/widgets/cart/cart_items.dart';
import 'package:awademo/widgets/cart/coupon_widgets.dart';
import 'package:awademo/widgets/checkout/billing_address_section.dart';
import 'package:awademo/widgets/checkout/billing_amount_section.dart';
import 'package:awademo/widgets/checkout/billing_payment_section.dart';
import 'package:awademo/widgets/costom_shapes/container/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Cart",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // items

              TCartItems(
                showAddRemoveButtons: false,
              ),
              SizedBox(
                height: 32,
              ),

              //coupon textfield
              TCouponCode(),
              SizedBox(
                height: 16,
              ),

              //billing session
              TRoundedContainer(
                padding: EdgeInsets.all(16),
                showBorder: true,
                backgroundColor: Colors.transparent,
                child: Column(
                  children: [
                    ///pricing
                    TBillingAmountSection(),
                    SizedBox(
                      height: 8,
                    ),

                    //divider
                    Divider(),
                    SizedBox(
                      height: 8,
                    ),

                    ///payment

                    TBillingPaymentSection(),
                    SizedBox(
                      height: 16,
                    ),

                    ///address
                    TBillingAddressSection()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade300),
            onPressed: () {
              Get.to(() => TSuccessScreen(
                  image: "assets/payment_images/tick.png",
                  title: "Payment Successful",
                  subTitle: "Your Item Will be Shipped Soon!",
                  onPressed: () => Get.offAll(const NavigationMenu()),));
            },
            child: Text(
              "Checkout Rs12456",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )),
      ),
    );
  }
}
