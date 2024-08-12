import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

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
                        "assets/menn.jpeg",
                      ),
                      fit: BoxFit.fill),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(vertical: 13.0),
                child: Text("Customize Your way",
                    style:
                    GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
               Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                    textAlign: TextAlign.center,
                    "Awa makes customization easier than \n ever before and let you be creative !",
                    style: GoogleFonts.poppins(
                        fontSize: 16,fontWeight: FontWeight.w500
                    ),
                ),),

            ],
          ),
        ),
      ),
    );
  }
}
