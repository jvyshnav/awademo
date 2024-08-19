import 'package:awademo/widgets/cart/add_remove_button.dart';
import 'package:awademo/widgets/cart/cart_item.dart';
import 'package:awademo/widgets/text/product_price.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key,  this.showAddRemoveButtons=true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(
        height: 32,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const TCartItem(),
          if(showAddRemoveButtons) const SizedBox(
            height: 10,
          ),
          if(showAddRemoveButtons) const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  TProductQuantityWithAddRemoveButton(),
                ],
              ),
              TProductPriceText(price: "6254"),
            ],
          )
        ],
      ),
    );
  }
}
