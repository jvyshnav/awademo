import 'package:awademo/widgets/appbar/appbar.dart';
import 'package:awademo/widgets/layouts/grid_layouts.dart';
import 'package:awademo/widgets/products/product_card/product_card_vertical.dart';
import 'package:flutter/material.dart';

import '../../widgets/products/sortable/sortable_products.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "All Products",
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: TSortableProducts(),
      ),
    );
  }
}

