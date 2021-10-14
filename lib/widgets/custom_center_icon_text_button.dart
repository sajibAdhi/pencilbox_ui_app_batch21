import 'package:flutter/cupertino.dart';

class CustomCenterIconTextButton extends StatelessWidget {
  final IconData icon;
  final String buttonText;
  final Color color;
  final Color buttonColor;

  const CustomCenterIconTextButton(
      {Key? key,
      required this.icon,
      required this.buttonText,
      required this.color,
      required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: buttonColor,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(
            buttonText,
            style: TextStyle(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
