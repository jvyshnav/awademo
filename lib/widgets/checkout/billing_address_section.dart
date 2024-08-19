import 'package:awademo/widgets/text/section_heading.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: "Shipping Address",
          buttonTitle: "change",
          showActionButton: true,
          onPresssed: () {},
        ),
        Text(
          "Vyshnav's Home",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Icon(Icons.phone),
            SizedBox(
              width: 16,
            ),
            Text(
              "91 955456789",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Icon(Icons.location_city),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Text(
                "Kochi Kerala , India",
                style: TextStyle(fontSize: 14),softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
