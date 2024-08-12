import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/intro22.jpg",
                      ),
                      fit: BoxFit.fill),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(vertical: 13.0),
                child: Text("Premium Quality Outfits",
                    style:
                    GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
               Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                    textAlign: TextAlign.center,
                    "Unleashing Premium Quality in Every \n Stitch. Discover Fashion Excellence.",
                    style:GoogleFonts.poppins(
                        fontSize: 16,fontWeight: FontWeight.w500
                    ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
