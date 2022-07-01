import 'package:assignment3_uidesign/views/shared/buttons/icon_text.dart';
import 'package:flutter/material.dart';

class IconTextOutlinedButton extends StatelessWidget {
  IconTextOutlinedButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.icon})
      : super(key: key);

  VoidCallback onPressed;
  IconData icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: IconText(text: text, iconData: icon),
    );
  }
}
