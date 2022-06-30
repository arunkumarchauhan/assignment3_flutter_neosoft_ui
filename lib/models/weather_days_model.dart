import 'package:flutter/material.dart';

class WeatherDayModel {
  String day;
  IconData iconData;
  WeatherDayModel({required this.day, required this.iconData});

  static List<WeatherDayModel> getDaysPrediction() {
    return [
      WeatherDayModel(day: "Sunday", iconData: Icons.sunny),
      WeatherDayModel(day: "Monday", iconData: Icons.wb_sunny_outlined),
      WeatherDayModel(day: "Tuesday", iconData: Icons.cloud),
      WeatherDayModel(day: "Wednesday", iconData: Icons.cloud_outlined),
      WeatherDayModel(day: "Thursday", iconData: Icons.sunny),
      WeatherDayModel(day: "Friday", iconData: Icons.cloud),
      WeatherDayModel(day: "Saturday", iconData: Icons.wb_sunny_outlined),
    ];
  }
}
