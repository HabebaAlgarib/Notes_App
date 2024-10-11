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
          CustomTextField(title: 'Context'),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: KPrimaryColor,
            ),
            child: MaterialButton(
              onPressed: () {},
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
