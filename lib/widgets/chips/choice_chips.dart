import 'package:awademo/components/helper_fuctons.dart';
import 'package:awademo/widgets/costom_shapes/container/circular_container.dart';
import 'package:flutter/material.dart';

class TChoiceChips extends StatelessWidget {
  const TChoiceChips({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text) != null;

    return ChoiceChip(
      label: isColor ? const SizedBox() : Text(text),

      selected: selected,

      onSelected: onSelected,

      labelStyle: TextStyle(color: selected ? Colors.white : null),

      avatar: isColor
          ? TCircularContainer(
              width: 50,
              height: 50,
              backgroundcolor: THelperFunctions.getColor(text)!)
          : null,

      labelPadding: isColor ? const EdgeInsets.all(0) : null,

// Make icon in the center

      padding: isColor ? const EdgeInsets.all(0) : null,

      shape: isColor ? const CircleBorder() : null,

      backgroundColor: isColor ? THelperFunctions.getColor(text)! : null,
    ); // ChoiceChip
  }
}
