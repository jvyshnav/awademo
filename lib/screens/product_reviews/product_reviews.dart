import 'package:awademo/widgets/appbar/appbar.dart';
import 'package:awademo/widgets/product_reviews/progress_indicator_ad_rating.dart';
import 'package:awademo/widgets/product_reviews/rating_progress_indicator.dart';
import 'package:awademo/widgets/product_reviews/user_review_card.dart';
import 'package:awademo/widgets/rating/rating_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

class ProductReviewScreen extends StatefulWidget {
  const ProductReviewScreen({super.key});

  @override
  State<ProductReviewScreen> createState() => _ProductReviewScreenState();
}

class _ProductReviewScreenState extends State<ProductReviewScreen> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "Reviews and Ratings",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                "Introducing a new and improved rating bar for Flutter, offering versatility and full customization. Unlike other rating bars, this one allows for any value to be selected, not just full or half ratings when interacted. Tap, drag and hover gestures are seamlessly supported, providing a smooth user experience"),
            SizedBox(
              height: 16,
            ),

            //overall product rating

            TOverallProductRating(),

            TRatingBArIndicator(rating: 3.5),
            Text(
              "12611",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(
              height: 32,
            ),


            ///users review list
            UserReviewCard(), UserReviewCard(), UserReviewCard(),
          ],
        ),
      ),
    );
  }
}
