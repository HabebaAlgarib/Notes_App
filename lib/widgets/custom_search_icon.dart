import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
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
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 28,
            )),
      ),
    );
  }
}
