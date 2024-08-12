import 'package:flutter/material.dart';

class TProductTitleText extends StatelessWidget {
  const TProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 1,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      style: smallSize
          ? const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
            )
          : const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis,
            ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
