import 'package:flutter/material.dart';

class BlackTextWhiteElevatedButton extends StatelessWidget {
  const BlackTextWhiteElevatedButton(
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
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
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
            style: Theme.of(context).textTheme.headline6,
          )),
    );
  }
}
