import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_buttom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            title: 'Title',
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextFormField(
            onSaved: (value) {
              content = value;
            },
            title: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 100,
          ),
          CustomBottom(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var noteModel = NoteModel(
                  title: title!,
                  subtitle: content!,
                  color: Colors.blue.value,
                  date: DateTime.now().toString(),
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            title: 'Add',
          ),
        ],
      ),
    );
  }
}
