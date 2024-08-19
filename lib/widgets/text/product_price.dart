import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    this.currencySign = "Rs ",
    required this.price,
    this.maxLine = 1,
  });
  final String currencySign, price;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.aBeeZee(fontSize: 17, fontWeight: FontWeight.w600),
    );
  }
}
