import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textcolor = Colors.black,
    this.backgroundColor = Colors.white,
    this.onTap,
  });
  final String image, title;
  final Color textcolor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 24),
        child: Column(
          children: [
            //circular icon
            Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            //text
            const SizedBox(
              height: 16 / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: GoogleFonts.poppins(fontSize: 12, color: textcolor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
