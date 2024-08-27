import 'package:awademo/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

import '../../widgets/orders_list/orders_list.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text("My Orders"),showBackArrow: true,),
      body: Padding(padding: EdgeInsets.all(16),child: TOrderListItems(),),
    );
  }
}
