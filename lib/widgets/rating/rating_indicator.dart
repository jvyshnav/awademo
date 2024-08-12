import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

class TRatingBArIndicator extends StatelessWidget {
  const TRatingBArIndicator({
    super.key,
    required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return PannableRatingBar(
      rate: rating,
      items: List.generate(
          5,
              (index) => const RatingWidget(
            selectedColor: Colors.yellow,
            unSelectedColor: Colors.grey,
            child: Icon(
              Icons.star,
              size: 20,
            ),
          )),
      onChanged: (value) {
        // the rating value is updated on tap or drag.
        // setState(() {
        //   rating = value;
        // });
      },
    );
  }
}
