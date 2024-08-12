import 'package:awademo/utils/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTapRegister;

  const LoginPage({super.key, this.onTapRegister});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  Future<void> signUserIn() async {
    if (usernameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      setState(() {
        isLoading = true;
      });

      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: usernameController.text,
          password: passwordController.text,
        );

        if (!mounted) return;

        // Call the callback function to update login status
        widget.onTapRegister?.call();

        // Navigate to the homepage
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const NavigationMenu();
            },
          ),
        );
      } catch (e) {
        if (kDebugMode) {
          print("Sign in error: $e");
        }
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Failed to sign in')),
          );
        }
      } finally {
        if (mounted) {
          setState(() {
            isLoading = false;
          });
        }
      }
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Please fill in both username and password')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  const SizedBox(height: 50),
                  const Icon(
                    Icons.lock,
                    size: 80,color:  Color(0xFF7b876d),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Welcome back, You've been missed",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  TextField(
                    controller: usernameController,
                    decoration:  InputDecoration(
                      hintText: "Username",
                      border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF7b876d))),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Handle forgot password
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: signUserIn,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF893f04),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
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
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/google_logo.webp",
                        height: 40,
                      ),
                      const SizedBox(width: 15),
                      Image.asset(
                        "assets/apple_logo.png",
                        height: 40,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a member?",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: widget.onTapRegister,
                        child: Text(
                          "Register now",
                          style: TextStyle(color: Colors.blue.shade600),
                        ),
                      ),
                    ],
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
