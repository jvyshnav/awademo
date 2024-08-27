import 'package:flutter/material.dart';

class TSuccessScreen extends StatelessWidget {
  const TSuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),

                ///image
                Image(
                  image: AssetImage(
                    image,
                  ),
                  width: 60,
                ),
                const SizedBox(
                  height: 16,
                ),

                ///title&subtitle
                Text(
                  title,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  subTitle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 14,
                ),
                const SizedBox(
                  height: 16,
                ),

                ///button
                ElevatedButton(
                  onPressed: onPressed,
                  child: const Text("Continue"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
