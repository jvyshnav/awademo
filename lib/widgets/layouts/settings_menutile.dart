import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TSettingsMenuTile extends StatelessWidget {
  const TSettingsMenuTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      this.trailing,
      this.onTap});
  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          border: Border.all(color: Colors.grey)),
      child: ListTile(
        leading: Icon(
          icon,
          size: 28,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(subTitle),
        trailing: trailing,
        onTap: onTap,
      ),
    );
  }
}
