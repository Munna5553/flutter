import 'package:DemoApp/src/res/strings.dart';
import 'package:DemoApp/src/views/widget/CreateNote.dart';
import 'package:DemoApp/src/views/widget/EmptyViews.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isList = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppString.appName,
                    style: GoogleFonts.poppins(
                        fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isList = !isList;
                      });
                    },
                    icon: Icon(isList ? Icons.splitscreen : Icons.grid_view),
                    iconSize: 30,
                  )
                ],
              ),
            ),
            const EmptyViews()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CreateNote()));
        },
        backgroundColor: const Color(0xff39A7FF),
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
