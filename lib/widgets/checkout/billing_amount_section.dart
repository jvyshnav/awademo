import 'package:flutter/material.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Subtotal",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),

            Text(
              "Rs 256",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Shipping Charge",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(
              "Rs 10",
              style: TextStyle(fontSize: 10,),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Tax Fee",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(
              "Rs 12",
              style: TextStyle(fontSize: 10,),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ), Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Order Total",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(
              "Rs 1265",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
