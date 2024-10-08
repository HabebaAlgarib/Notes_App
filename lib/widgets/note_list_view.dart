import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final List<Color> colors = const [
    Color(0xffFFCC80),
    Color(0xffe6e895),
    Color(0xff76d6ee),
    Color(0xffd79be1),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0),
            child: NoteItem(
              noteColor: colors[index],
            ),
          );
        });
  }
}
