import 'package:flutter/cupertino.dart';

class CustomHeader extends StatelessWidget {
  final String text;
  const CustomHeader( this.text,{Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 30,
          color: Color(0xff092342),
        ),
      ),
    );
  }
}
