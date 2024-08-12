import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

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
                        "assets/introyellow.jpg",
                      ),
                      fit: BoxFit.fill),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(vertical: 13.0),
                child: Text("Find Your Outfits",
                    style:
                        GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
               Text(
                 textAlign: TextAlign.center,
                 "Confused about your outfit? Don't worry! \n Awa is your one stop Fashion hub",
                 style: GoogleFonts.poppins(
                   fontSize: 16,fontWeight: FontWeight.w500
                 ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}
