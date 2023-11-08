import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateNote extends StatefulWidget {
  const CreateNote({super.key});

  @override
  State<CreateNote> createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: "Title"),
                  style: GoogleFonts.poppins(fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: "Description"),
                  style: GoogleFonts.poppins(fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
