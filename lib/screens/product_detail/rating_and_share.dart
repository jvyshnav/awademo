import 'package:flutter/material.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            SizedBox(
              width: 2,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(text: '5 '),
              TextSpan(text: '(199)'),
            ]))
          ],
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.share))
      ],
    );
  }
}
