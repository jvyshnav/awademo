import 'package:awademo/widgets/costom_shapes/container/rounded_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TCategoryCard extends StatelessWidget {
  const TCategoryCard({super.key, required this.showBorder, this.onTap});

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        showBorder: true,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Flexible(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      color: Colors.blue,
                      border: Border.all(color: Colors.grey.shade600)),
                  height: 50,
                  width: 50,
                  child: const Icon(CupertinoIcons.slider_horizontal_3)),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Women",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "256 products",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 11),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
