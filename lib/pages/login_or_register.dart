import 'package:flutter/material.dart';
import 'package:awademo/login_page.dart';
import 'package:awademo/pages/register_page.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  // Initially show login page
  bool showLoginPage = true;

  // Toggle between login and register pages
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showLoginPage
          ? LoginPage(
              onTapRegister: togglePages, // Toggle to register page
            )
          : RegisterPage(
              onTapLogin: togglePages, // Toggle to login page
            ),
    );
  }
}
