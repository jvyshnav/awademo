import 'package:awademo/widgets/costom_shapes/container/rounded_container.dart';
import 'package:flutter/material.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(padding: EdgeInsets.all(12),
        width: double.infinity,
        showBorder: true,
        backgroundColor:
            selectedAddress ? Colors.blue.withOpacity(0.5) : Colors.transparent,
        borderColor: Colors.grey,
        margin: EdgeInsets.only(bottom: 12),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 5,
              child: Icon(
                selectedAddress ? Icons.check_circle : null,
                size: 20,
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Manu",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                ),  Text(
                  "+91 9539887972",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16,),
                ),Text(
                  "Timeline—formerly known as Location History",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            )
          ],
        ));
  }
}
