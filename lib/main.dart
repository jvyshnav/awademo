import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:awademo/onboarding.dart';
import 'package:awademo/utils/navigation_menu.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NavigationMenu(),
      // AnimatedSplashScreen(
      //     splash: Text(
      //       "AWA APPARELS",
      //       style: GoogleFonts.poppins(
      //           fontSize: 25,
      //           fontWeight: FontWeight.bold,
      //           color: Color((0xFF893f04))),
      //     ),
      //     duration: 2000,
      //     splashTransition: SplashTransition.rotationTransition,
      //     backgroundColor: const Color(0xFF7b876d),
      //     nextScreen: const OnboardingScreen()),
    );
  }
}
