import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(
            icon: Icons.search,
            title: 'Notes',
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
