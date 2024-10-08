import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(94, 114, 113, 113),
      ),
      child: Center(
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 28,
            )),
      ),
    );
  }
}
