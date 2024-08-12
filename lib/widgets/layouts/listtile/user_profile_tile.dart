import 'package:awademo/widgets/image/circular_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: 'assets/profile.jpg',
        height: 56,
        width: 56,
        padding: 0,
      ),
      title: Text(
        'Vyshnav Devoloper',
        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        'vyshnavdevoloper@gmail.com',
        style: GoogleFonts.poppins(fontSize: 12),
      ),
      trailing:
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit_document)),
    );
  }
}
