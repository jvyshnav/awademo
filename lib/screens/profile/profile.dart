import 'package:awademo/utils/navcontrollr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:awademo/pages/login_or_register.dart';
import 'package:awademo/widgets/appbar/appbar.dart';
import 'package:awademo/widgets/layouts/listtile/user_profile_tile.dart';
import 'package:awademo/widgets/layouts/settings_menutile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  User? user;
  final NavigationController navigationController = Get.find();

  @override
  void initState() {
    super.initState();
    // Get the current user when the widget is initialized
    user = FirebaseAuth.instance.currentUser;
  }

  /// Sign user out
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
      appBar: TAppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "Account",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    const TUserProfileTile(),
                    const SizedBox(
                      height: 10,
                    ),
                    TSettingsMenuTile(
                      icon: Icons.home,
                      title: 'My Address',
                      subTitle: 'Set shopping delivery address',
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TSettingsMenuTile(
                      icon: Icons.home,
                      title: 'My Address',
                      subTitle: 'Set shopping delivery address',
                      onTap: () {},
                    ),
                    // Add more menu tiles as needed
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: ElevatedButton(
              onPressed: signUserOut,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Logout',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
