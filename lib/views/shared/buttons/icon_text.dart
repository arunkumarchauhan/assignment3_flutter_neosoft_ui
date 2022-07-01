import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  IconText({Key? key, required this.iconData, required this.text})
      : super(key: key);
  final IconData iconData;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconData,
          size: 22,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(text),
      ],
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.hintText})
      : super(key: key);

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: TextFormField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black12,
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black26,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              gapPadding: 10,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          )),
    );
  }
}
