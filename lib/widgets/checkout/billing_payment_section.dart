import 'package:awademo/widgets/costom_shapes/container/rounded_container.dart';
import 'package:awademo/widgets/text/section_heading.dart';
import 'package:flutter/material.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TSectionHeading(
          title: "Payment Method",
          buttonTitle: "change",
          showActionButton: true,
          onPresssed: () {},
        ),
        Row(
          children: [
            TRoundedContainer(
              height: 30,
              width: 40,
              backgroundColor: Colors.white,
              child: Image.asset("assets/payment_images/paypal.png",fit: BoxFit.contain,),
            ),
            SizedBox(width: 10,),
            Text("Paypal",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),)
          ],
        )
      ],
    );
  }
}
