import 'package:awademo/widgets/appbar/appbar.dart';
import 'package:awademo/widgets/image/circular_image.dart';
import 'package:awademo/widgets/image_text_widgets/rounded_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        width: double.infinity,
        color: Colors.amber,
        child: Stack(
          children: [
            const TCircularImage(
              image: 'assets/product/blackshirt.jpg',
              height: double.infinity,
              width: double.infinity,
              borderRadius: 0,
            ),
            Positioned(
              right: 0,
              bottom: 30,
              left: 16,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, __) => TRoundedImage(
                    isNetworkImage: false,
                    imageUrl: 'assets/product/redshirt.jpg',
                    border: Border.all(
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(8),
                    width: 80,
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: 10,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: TAppBar(
                showBackArrow: true,
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.heart,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
