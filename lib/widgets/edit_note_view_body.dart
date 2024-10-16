import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit Note',
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextFormField(title: 'Title'),
          SizedBox(height: 15),
          CustomTextFormField(
            title: 'Content',
            maxLines: 5,
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
