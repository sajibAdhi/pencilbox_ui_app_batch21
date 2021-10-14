import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        child: FaIcon(
          FontAwesomeIcons.arrowLeft,
          size: 26,
          color: Colors.black87,
        ),
      ),
    );
  }
}
