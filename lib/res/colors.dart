import 'package:flutter/material.dart';

Map<int, Color> customColor = {
  50: getColor(0.9),
  100: getColor(0.8),
  200: getColor(0.6),
  300: getColor(0.4),
  400: getColor(0.2),
  500: getColor(0),
  600: getColor(0.1),
  700: getColor(0.2),
  800: getColor(0.3),
  900: getColor(0.4),
};
Color getColor(double opacity) => Color.fromRGBO(129, 9, 85, opacity);
