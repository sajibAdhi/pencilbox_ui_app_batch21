import 'package:flutter/material.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      child: Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        // decoration: BoxDecoration(color: Colors.yellow),
        child: Column(
          children: [
            TextWidget(text: 'For any help', color: Colors.black),
            TextWidget(
              text: 'Call at 16479',
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final text;
  final Color color;
  const TextWidget({
    Key? key,
    this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
