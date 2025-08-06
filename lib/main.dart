import 'package:flutter/material.dart';
import 'package:my_flutter_app/my_tools/colors.dart';
import 'package:my_flutter_app/my_ui/login_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyVideoApp',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: MyBackGroundColor,
      ),
      home: LoginUi(),
    );
  }
}
