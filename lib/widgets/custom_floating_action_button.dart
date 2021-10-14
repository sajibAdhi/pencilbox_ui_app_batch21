import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final widget;
  const CustomFloatingActionButton({
    Key? key,
    this.widget = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      right: 10,
      child: FloatingActionButton(
        onPressed: () {
          (widget != false)
              ? Navigator.push(
                  context, MaterialPageRoute(builder: (context) => widget))
              // ignore: unnecessary_statements
              : null;
        },
        backgroundColor: Color(0xffde1e37),
        child: Icon(
          Icons.arrow_forward,
          size: 30,
        ),
      ),
    );
  }
}
