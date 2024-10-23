import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.withOpacity(0.5),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              context: context,
              builder: (context) {
                return const AddNoteButtomSheet();
              });
        },
        child: Icon(
          Icons.note_alt_outlined,
          size: 27,
          color: Colors.white.withOpacity(0.6),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
