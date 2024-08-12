import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';

class TCarouselSlider extends StatelessWidget {
  const TCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        pauseAutoPlayOnTouch: true,
      ),
      items: [
        'assets/slider/slider1.jpg',
        'assets/slider/slider2.webp',
        'assets/slider/slider3.jpeg',
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(i),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
