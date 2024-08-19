import 'package:awademo/widgets/costom_shapes/container/rounded_container.dart';
import 'package:awademo/widgets/rating/rating_indicator.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/profile.jpg"),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "John Doe",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            const SizedBox(
              height: 16,
            ),

            ///review
          ],
        ),

        const Row(
          children: [
            TRatingBArIndicator(rating: 4),
            SizedBox(
              width: 16,
            ),
            Text(
              "01 Nov, 2024",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),

        //description
        const ReadMoreText(
          "A Flutter plugin that allows for expanding and collapsing text with the added capability to style and interact with specific patterns in the text like hashtags, URLs, and mentions using the new Annotation feature.",
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimCollapsedText: "Show more",
          trimExpandedText: "Less",
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
          lessStyle: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
        ),
        const SizedBox(
          height: 8,
        ),

        //company review
        TRoundedContainer(
          backgroundColor: Colors.grey.shade300,
          child: const Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Awa Store",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "01 Nov, 2024",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),

                //description
                ReadMoreText(
                  "A Flutter plugin that allows for expanding and collapsing text with the added capability to style and interact with specific patterns in the text like hashtags, URLs, and mentions using the new Annotation feature.",
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: "Show more",
                  trimExpandedText: "Less",
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 8,)
      ],
    );
  }
}
