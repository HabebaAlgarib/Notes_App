import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        labelText: title,
        labelStyle: const TextStyle(color: KPrimaryColor),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
