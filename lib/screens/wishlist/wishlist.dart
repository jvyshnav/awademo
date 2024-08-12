import 'package:awademo/widgets/appbar/appbar.dart';
import 'package:awademo/widgets/layouts/grid_layouts.dart';
import 'package:awademo/widgets/products/product_card/product_card_vertical.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "Wishlist",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.add,
                size: 24,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: TGridLayout(
            itemCount: 6,
            itemBuilder: (_, index) => const TProductCardVertical()),
      ),
    );
  }
}
