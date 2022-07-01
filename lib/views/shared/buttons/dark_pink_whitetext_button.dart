import 'package:flutter/material.dart';

class DarkPinkWhiteTextElevatedButton extends StatelessWidget {
  const DarkPinkWhiteTextElevatedButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.horizontalMargin = 5})
      : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final double horizontalMargin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: horizontalMargin),
      child: ElevatedButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all<Size>(
              const Size(double.infinity, 50),
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.all(8)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline4,
          )),
    );
  }
}
