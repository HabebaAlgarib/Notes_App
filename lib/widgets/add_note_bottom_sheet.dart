import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            title: 'Title',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            title: 'Context',
            maxLines: 5,
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
