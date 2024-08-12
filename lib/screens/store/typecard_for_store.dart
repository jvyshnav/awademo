import 'package:awademo/widgets/costom_shapes/container/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:awademo/widgets/image/circular_image.dart';

class TTypeCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const TTypeCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: TRoundedContainer(
          padding: const EdgeInsets.all(8),
          showBorder: true,
          backgroundColor: Colors.transparent,
          child: Row(
            children: [
              TCircularImage(
                image: imagePath,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
