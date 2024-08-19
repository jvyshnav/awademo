
import 'package:awademo/widgets/costom_shapes/container/rounded_container.dart';
import 'package:flutter/material.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Have a promo code? Enter here",
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,),
            ),

          ),
          SizedBox(width: 30,),ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade400,),
              onPressed: () {

              }, child: Text("Apply",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),))
        ],
      ),
    );
  }
}
