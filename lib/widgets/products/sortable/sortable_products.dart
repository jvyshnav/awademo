import 'package:flutter/material.dart';

import '../../layouts/grid_layouts.dart';
import '../product_card/product_card_vertical.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          decoration: InputDecoration(prefixIcon: Icon(Icons.sort),border:OutlineInputBorder() ),
          items: [
            "Name",
            "Price",
            "Highest Price",
            "Lowest Price",
            "Sale",
            "Newest",
            "Popularit"
          ]
              .map((option) =>
              DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
          onChanged: (value) {},
        ),
        SizedBox(
          height: 16,
        ),
        TGridLayout(
          itemCount: 8,
          itemBuilder: (_, index) => TProductCardVertical(),
        )
      ],
    );
  }
}
