import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Appbar"),
          backgroundColor:const Color(0xff00ff87),
          toolbarHeight: 100,
        ),
       body: const Text("hello"),
      ),
    );
  }
}
