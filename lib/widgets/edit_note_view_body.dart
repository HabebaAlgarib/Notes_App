import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_note_colors_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: ListView(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNote();
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Note updated successfully'),
                ),
              );
            },
            icon: Icons.check,
            title: 'Edit Note',
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextFormField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(height: 15),
          CustomTextFormField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subtitle,
            maxLines: 5,
          ),
          const SizedBox(height: 30),
          EditNoteColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
