import 'package:DemoApp/src/res/strings.dart';
import 'package:DemoApp/src/views/HomePage.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:AppString.appName,
      home:HomePage(),
    );
  }
}
