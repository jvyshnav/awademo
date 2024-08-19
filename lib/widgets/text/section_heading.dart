import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = false,
    required this.title,
    this.buttonTitle = 'View all',
    this.onPresssed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPresssed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 18, color: textColor, fontWeight: FontWeight.bold),
          // TextStyle(
          //   fontSize: 24,
          //   color: textColor,
          // ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: onPresssed,
            child: Text(
              buttonTitle,
              style: const TextStyle(color: Color.fromARGB(255, 118, 189, 247)),
            ),
          ),
      ],
    );
  }
}
