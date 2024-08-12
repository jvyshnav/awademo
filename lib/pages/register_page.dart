import 'package:awademo/homepage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  final Function()? onTapLogin;

  const RegisterPage({super.key, this.onTap, this.onTapLogin});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool isLoading = false;

  void showErrorMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future<void> signUserUp(BuildContext context) async {
    if (usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      setState(() {
        isLoading = true;
      });

      try {
        if (passwordController.text == confirmPasswordController.text) {
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: usernameController.text,
              password: passwordController.text);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const HomepageOne();
              },
            ),
          );
        } else {
          showErrorMessage("Passwords don't match!");
        }
      } catch (e) {
        if (kDebugMode) {
          print("Sign in error: $e");
        }
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to sign in')),
        );
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in both username and password'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const Icon(
                    Icons.lock,
                    size: 50,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      "It's not too late to start an account ",
                      style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade800),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      hintText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: confirmPasswordController,
                    decoration: const InputDecoration(
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () => signUserUp(context),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.green.shade800,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Or Continue with",
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/google_logo.webp",
                        height: 40,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        "assets/apple_logo.png",
                        height: 40,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account ?",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: widget.onTapLogin,
                          child: Text(
                            "Login now",
                            style: TextStyle(color: Colors.blue.shade600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
