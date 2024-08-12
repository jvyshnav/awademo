import 'package:awademo/pages/login_or_register.dart';
import 'package:awademo/utils/navigation_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is logged in
          if (snapshot.hasData) {
            return const NavigationMenu();
          }

          //user is not logged
          else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
