import 'package:awademo/screens/store/typecard_for_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awademo/widgets/appbar/appbar.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  final List<Map<String, String>> cardData = const [
    {
      'imagePath': 'assets/store/tshirt.jpg',
      'title': 'T-Shirts',
      'subtitle': '256 products',
    },
    {
      'imagePath': 'assets/slider/slider2.webp',
      'title': 'sarees',
      'subtitle': '180 products',
    },
    {
      'imagePath': 'assets/slider/slider1.jpg',
      'title': 'kurtas',
      'subtitle': '120 products',
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            "Store",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.bag,
              size: 24,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: cardData.length,
        itemBuilder: (context, index) {
          final item = cardData[index];
          return TTypeCard(
            imagePath: item['imagePath']!,
            title: item['title']!,
            subtitle: item['subtitle']!,
          );
        },
      ),
    );
  }
}
