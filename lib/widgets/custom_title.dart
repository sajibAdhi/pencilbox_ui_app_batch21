import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Sign In',
        style: TextStyle(
          fontSize: 36,
          color: Color(0xFF122F51),
        ),
      ),
    );
  }
}
