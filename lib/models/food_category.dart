import 'package:flutter/material.dart';

class FoodCategory {
  IconData iconData;
  String name;
  FoodCategory({required this.iconData, required this.name});

  static List<FoodCategory> foodCategories() {
    return [
      FoodCategory(iconData: Icons.food_bank, name: "Shushi"),
      FoodCategory(iconData: Icons.fastfood, name: "Fastfood"),
      FoodCategory(iconData: Icons.apple, name: "Fruits"),
      FoodCategory(iconData: Icons.backpack, name: "Proteins"),
      FoodCategory(iconData: Icons.icecream, name: "Ice Cream"),
      FoodCategory(iconData: Icons.food_bank, name: "Shushi"),
      FoodCategory(iconData: Icons.fastfood, name: "Fastfood"),
      FoodCategory(iconData: Icons.apple, name: "Fruits"),
      FoodCategory(iconData: Icons.backpack, name: "Proteins"),
      FoodCategory(iconData: Icons.icecream, name: "Ice Cream")
    ];
  }
}
