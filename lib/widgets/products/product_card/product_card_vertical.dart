import 'package:awademo/screens/product_detail/product_detail.dart';
import 'package:awademo/widgets/costom_shapes/container/rounded_container.dart';
import 'package:awademo/widgets/icons/circular_icon.dart';
import 'package:awademo/widgets/image_text_widgets/rounded_image.dart';
import 'package:awademo/widgets/text/product_price.dart';
import 'package:awademo/widgets/text/product_title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const ProductDetail();
          },
        ));
      },
      child: Container(
        width: 180,
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 2,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade300,
        ),
        child: Column(
          children: [
            // Thumbnail
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TRoundedContainer(
                height: 180,
                width: double.infinity,
                padding: const EdgeInsets.all(0),
                backgroundColor: Colors.white,
                child: Stack(
                  children: [
                     const TRoundedImage(width: double.infinity,
                      imageUrl: 'assets/slider/slider2.webp',
                      applyImageRadius: true,
                    ),
                    // Sale tag
                    Positioned(
                      left: 5,
                      top: 5,
                      child: TRoundedContainer(
                        radius: 8,
                        backgroundColor: Colors.yellow.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        child: const Text(
                          "25%",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    // Favourite icon
                    const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: CupertinoIcons.heart_fill,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 4),
            // Details
            const Padding(
              padding: EdgeInsets.only(left: 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 160,
                    child: TProductTitleText(
                      title: 'HandCrafted Premium Saree',
                      smallSize: true,
                      maxLines: 1,
                    ),
                  ),

                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Price
                  const TProductPriceText(
                    price: '125',
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: const SizedBox(
                      height: 25,
                      width: 30,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
