import 'package:exam3/widgets/custom_back_button.dart';
import 'package:exam3/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final List<Widget> widgets;
  const AppLayout({Key? key, required this.widgets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      width: _size.width,
      color: Colors.yellow,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }
}
