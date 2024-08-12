import 'package:awademo/screens/product_detail/rating_and_share.dart';
import 'package:awademo/widgets/chips/choice_chips.dart';
import 'package:awademo/widgets/products/product_card/bottom_add_to_cart_widget.dart';
import 'package:awademo/widgets/products/product_detail_slider.dart';
import 'package:awademo/widgets/text/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: Column(
        children: [
          // First half: product image slider placeholder
          const TProductImageSlider(),
          // Second half: product details placeholder
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Rating
                    const TRatingAndShare(),

                    // Product Title
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'Black Shirt',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    // Product Price
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        '\$29.99',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TSectionHeading(title: "Colors"),
                        const SizedBox(
                          height: 8,
                        ),
                        Wrap(
                          spacing: 15,
                          children: [
                            TChoiceChips(
                              text: "Green",
                              selected: true,
                              onSelected: (value) {},
                            ),
                            TChoiceChips(
                              text: "Blue",
                              selected: false,
                              onSelected: (value) {},
                            ),
                            TChoiceChips(
                              text: "Yellow",
                              selected: true,
                              onSelected: (value) {},
                            ),
                            TChoiceChips(
                              text: "Green",
                              selected: true,
                              onSelected: (value) {},
                            ),
                            TChoiceChips(
                              text: "Blue",
                              selected: false,
                              onSelected: (value) {},
                            ),
                            TChoiceChips(
                              text: "Yellow",
                              selected: true,
                              onSelected: (value) {},
                            ),
                            TChoiceChips(
                              text: "Green",
                              selected: true,
                              onSelected: (value) {},
                            ),
                            TChoiceChips(
                              text: "Blue",
                              selected: false,
                              onSelected: (value) {},
                            ),
                            TChoiceChips(
                              text: "Yellow",
                              selected: true,
                              onSelected: (value) {},
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TSectionHeading(title: "Size"),
                        SizedBox(
                          height: 8,
                        ),
                        Wrap(
                          spacing: 8,
                          children: [
                            TChoiceChips(
                              text: "UE 34",
                              selected: true,
                              onSelected: (value) {},
                            ),
                            TChoiceChips(
                              text: "UE 36",
                              selected: false,
                              onSelected: (value) {},
                            ),
                            TChoiceChips(
                              text: "UE 38",
                              selected: true,
                              onSelected: (value) {},
                            ),
                            TChoiceChips(
                              text: "UE 34",
                              selected: true,
                              onSelected: (value) {},
                            ),
                            TChoiceChips(
                              text: "UE 36",
                              selected: false,
                              onSelected: (value) {},
                            ),
                            TChoiceChips(
                              text: "UE 38",
                              selected: true,
                              onSelected: (value) {},
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Checkout"),
                        )),

                    // Product Description
                    const SizedBox(
                      height: 16,
                    ),
                    const TSectionHeading(
                      title: "Description",
                    ),
                    ReadMoreText(
                      "A Flutter plugin that allows for expanding and collapsing text with the added capability to style and interact with specific patterns in the text like hashtags, URLs, and mentions using the new Annotation feature.",
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: "Show more",
                      trimExpandedText: "Less",
                      moreStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                    ),

                    // Product Reviews
                    Divider(),
                    SizedBox(
                      height: 16,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        TSectionHeading(title: 'Review(199)'),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_right))
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),

                    // Other details like stock, brand, attributes, checkout button can be added here
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewWidget extends StatelessWidget {
  final String username;
  final int rating;
  final String review;

  const ReviewWidget({
    required this.username,
    required this.rating,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                username,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    index < rating ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                    size: 16,
                  );
                }),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            review,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
