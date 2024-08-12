import 'package:awademo/widgets/icons/circular_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              TCircularIcon(
                icon: CupertinoIcons.minus,
                backGroundColor: Colors.grey,
                width: 35,
                height: 35,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "2",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 12,
              ),
              TCircularIcon(
                icon: Icons.add,
                backGroundColor: Colors.black,
                width: 35,
                height: 35,
                color: Colors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(12), backgroundColor: Colors.black),
              child: Text(
                "Add to Cart",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
