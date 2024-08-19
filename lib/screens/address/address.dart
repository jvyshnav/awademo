import 'package:awademo/widgets/address/single_address.dart';
import 'package:awademo/widgets/appbar/appbar.dart';
import 'package:awademo/widgets/costom_shapes/container/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => AddNewAddressScreen()),
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          "Addresses",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            TSingleAddress(selectedAddress: false),
            TSingleAddress(selectedAddress: true),
          ],
        ),
      ),
    );
  }
}
