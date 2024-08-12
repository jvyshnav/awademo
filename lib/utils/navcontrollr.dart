import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:awademo/screens/home/home.dart';
import 'package:awademo/screens/store/store.dart';
import 'package:awademo/screens/wishlist/wishlist.dart';
import 'package:awademo/screens/profile/profile.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final List<Widget> screens = [
    const HomeScreen(),
    const Store(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];

  int getSelectedIndex() => selectedIndex.value;
}
