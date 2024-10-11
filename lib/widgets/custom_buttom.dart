import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: KPrimaryColor,
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
