import 'package:awademo/homepage.dart';
import 'package:flutter/material.dart';

class PgeOne extends StatefulWidget {
  const PgeOne({super.key});

  @override
  State<PgeOne> createState() => _PgeOneState();
}

class _PgeOneState extends State<PgeOne> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigatetohome();
  }

  navigatetohome() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomepageOne(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.blue.shade300,
            ),
            Container(
              child: const Text(
                "Splash screen",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
