import 'package:flutter/material.dart';

class CustomLinearProgressIndecator extends StatelessWidget {
  final double progressValue;
  const CustomLinearProgressIndecator({Key? key, required this.progressValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.center,
      child: Container(
        width: _size.width / 1.5,
        child: LinearProgressIndicator(
          backgroundColor: Colors.grey[500],
          color: Colors.green[800],
          minHeight: 5,
          value: progressValue,
        ),
      ),
    );
  }
}