import 'package:awademo/onboardingfile/intro_page_1.dart';
import 'package:awademo/onboardingfile/intro_page_2.dart';
import 'package:awademo/onboardingfile/intro_page_3.dart';
import 'package:awademo/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //page view
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          //dot indicator

          Container(
              alignment: const Alignment(0, 0.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(2);
                          },
                          child: const Text(
                            '',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(2);
                          },
                          child: const Text(
                            'skip',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: JumpingDotEffect(
                      activeDotColor: Colors.deepPurple,
                      dotColor: Colors.deepPurple.shade100,
                      spacing: 10,
                      jumpScale: 2,
                    ),
                  ),

                  //on last page
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context) {
                                return const AuthPage();

                              },
                            ));
                          },
                          child: const Text(
                            'done',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.deepPurpleAccent),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: const Text(
                            'Next',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                ],
              ))
        ],
      ),
    );
  }
}
