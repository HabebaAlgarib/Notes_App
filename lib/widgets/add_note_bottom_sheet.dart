import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_buttom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomTextField(
              title: 'Title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              title: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 100,
            ),
            CustomBottom(
              title: 'Add',
            ),
          ],
        ),
      ),
    );
  }
}
