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
    final _size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: _size.height / 15,
      width: _size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: buttonColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          SizedBox(width: 5),
          Text(
            buttonText,
            style: TextStyle(
              color: color,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
