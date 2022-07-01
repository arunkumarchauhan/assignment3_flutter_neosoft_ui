import 'package:flutter/material.dart';

class BottomNavigationItemDataHolder {
  String name;
  IconData iconData;
  BottomNavigationItemDataHolder(this.name, this.iconData);
  static List<BottomNavigationItemDataHolder> getBottomNavDatList() {
    return [
      BottomNavigationItemDataHolder("Home", Icons.home),
      BottomNavigationItemDataHolder("Near By", Icons.lightbulb_circle),
      BottomNavigationItemDataHolder("Cart", Icons.shopping_cart),
      BottomNavigationItemDataHolder("Account", Icons.account_box),
    ];
  }
}
