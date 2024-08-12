import 'package:awademo/pages/login_or_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomepageOne extends StatefulWidget {
  const HomepageOne({super.key});

  @override
  State<HomepageOne> createState() => _HomepageOneState();
}

class _HomepageOneState extends State<HomepageOne> {
  User? user;

  @override
  void initState() {
    super.initState();
    // Get the current user when the widget is initialized
    user = FirebaseAuth.instance.currentUser;
  }

  /// sign user out
  void signUserOut() async {
    if (mounted) {
      // Show loading circle
      showDialog(
        context: context,
        builder: (context) {
          return const Center(child: CircularProgressIndicator());
        },
      );
    }

    await FirebaseAuth.instance.signOut();

    if (mounted) {
      setState(() {
        user = null; // Update the user state
      });

      // Navigate back to the LoginOrRegisterPage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginOrRegisterPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (user != null)
            IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout))
        ],
      ),
      body: Container(
        color: Colors.green.shade100,
        child: Center(
          child: Text(
            user != null ? "Logged in as ${user!.email}" : "Not logged in",
            style: const TextStyle(fontSize: 20),
          ), // Displaying user's email if logged in
        ),
      ),
    );
  }
}
