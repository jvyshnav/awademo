import 'package:awademo/widgets/icons/circular_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: CupertinoIcons.minus,
          height: 30,
          width: 30,
          color: Colors.black,
          size: 15,
          backGroundColor: Colors.grey.shade400,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "2",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 10,
        ),
        TCircularIcon(
          icon: CupertinoIcons.add,
          height: 30,
          width: 30,
          color: Colors.white,
          size: 15,
          backGroundColor: Colors.blue,
        ),
      ],
    );
  }
}
