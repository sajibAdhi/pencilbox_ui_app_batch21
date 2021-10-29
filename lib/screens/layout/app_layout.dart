import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final List<Widget> children;
final CrossAxisAlignment  crossAxisAlignment;
  const AppLayout({Key? key, required this.children, this.crossAxisAlignment = CrossAxisAlignment.center}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      width: _size.width,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: children,
      ),
    );
  }
}
