import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key, required this.title, this.onPressed, this.isLoading = false});
  final String title;
  final void Function()? onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(1),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: isLoading
            ? const SizedBox(
                height: 26,
                width: 26,
                child: CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 3,
                ),
              )
            : Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
