import 'package:awademo/screens/cart/cart.dart';
import 'package:awademo/screens/home/widgetsss/home_categories.dart';
import 'package:awademo/widgets/appbar/appbar.dart';
import 'package:awademo/widgets/carousel_slider.dart';
import 'package:awademo/widgets/costom_shapes/container/search_container.dart';
import 'package:awademo/widgets/layouts/grid_layouts.dart';
import 'package:awademo/widgets/products/product_card/product_card_vertical.dart';
import 'package:awademo/widgets/text/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              // AppBar
              TAppBar(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[800],
                      ),
                    ),
                    Text(
                      'Vyshnav',
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                actions: [
                  IconButton(onPressed: () => Get.to(()=>const CartScreen()), icon: const Icon(Icons.shopping_bag_outlined),)
                ],
              ),
              const SizedBox(height: 8),

              // Search bar
              const TSearchContainer(
                text: "Search in Store",
                showBackground: true,
              ),
              const SizedBox(height: 32),

              // Section heading
              const Column(
                children: [
                  TSectionHeading(
                    title: 'Popular Catogories',
                    showActionButton: false,
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Categories
              const THomeCategories(),

              const SizedBox(height: 32),

              // Carousel slider
              const TCarouselSlider(),

              const SizedBox(height: 24),
              TSectionHeading(
                title: "Popular Products",
                onPresssed: () {},
                showActionButton: true,
              ),
              const SizedBox(height: 16),
              //popular products
              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const TProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
