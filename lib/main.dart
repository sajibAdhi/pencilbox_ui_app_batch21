import 'package:flutter/material.dart';
import 'package:pencilbox/screens/profile/personal_details_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PersonalDetailsPage(),
    );
  }
}
