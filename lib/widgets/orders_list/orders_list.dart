import 'package:awademo/widgets/costom_shapes/container/rounded_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TOrderListItems extends StatelessWidget {
  const TOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemCount: 10,shrinkWrap: true,
      separatorBuilder: (_,__) => const SizedBox(height: 16,),
      itemBuilder:(_, index) =>  TRoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(8),
        backgroundColor: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///row 1
            Row(
              children: [
                Icon(
                  Icons.directions_boat,
                ),
                SizedBox(
                  width: 16,
                ),

                ///status & date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Processing",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Text(
                        "07 Nov 2024",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                ///Icon
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chevron_right,
                      size: 20,
                    )),
              ],
            ),
            SizedBox(height: 8,),

            ///row -2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.tag,
                      ),
                      SizedBox(
                        width: 16,
                      ),

                      ///status & date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Order",
                              style: TextStyle(
                                  fontSize: 12,

                                  ),
                            ),
                            Text(
                              "[#554421]",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.date_range,
                      ),
                      SizedBox(
                        width: 16,
                      ),

                      ///status & date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Shipping Date",
                              style: TextStyle(
                                fontSize: 12,

                              ),
                            ),
                            Text(
                              "07 Nov 2024",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
