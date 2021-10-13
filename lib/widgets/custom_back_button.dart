import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: new Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Icon(
          Icons.arrow_back,
          size: 30,
        ),
      ),
    );
  }
}
