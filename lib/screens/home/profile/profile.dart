import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const ProfileHeader(),
          const Divider(),
          ProfileListItem(
            icon: Icons.location_on,
            title: 'My Address',
            onTap: () {
              // Handle tap
            },
          ),
          ProfileListItem(
            icon: Icons.shopping_cart,
            title: 'My Cart',
            onTap: () {
              // Handle tap
            },
          ),
          ProfileListItem(
            icon: Icons.receipt,
            title: 'My Orders',
            onTap: () {
              // Handle tap
            },
          ),
          ProfileListItem(
            icon: Icons.account_balance,
            title: 'Bank Account',
            onTap: () {
              // Handle tap
            },
          ),
          ProfileListItem(
            icon: Icons.notifications,
            title: 'Notifications',
            onTap: () {
              // Handle tap
            },
          ),
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
                'assets/profile_picture.png'), // Replace with your image
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vyshnav',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'vyshnav@example.com',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileListItem extends StatelessWidget {
  const ProfileListItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(
        title,
        style: GoogleFonts.poppins(fontSize: 16),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
