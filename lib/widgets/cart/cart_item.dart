import 'package:awademo/widgets/image_text_widgets/rounded_image.dart';
import 'package:awademo/widgets/text/product_title_text.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundedImage(
          imageUrl: "assets/catogories/shoe.jpg",
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(8),
          backgroundColor: Colors.grey.shade300,
        ),
        const SizedBox(
          width: 10,
        ),

        //title, price & size

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TProductTitleText(
                title: "Black Sports Shoes ",
                maxLines: 1,
              ),

              //attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Color ",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),TextSpan(
                      text: "Green ",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),TextSpan(
                      text: " Size ",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),TextSpan(
                      text: "UK18",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
