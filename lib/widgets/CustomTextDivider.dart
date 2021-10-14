import 'package:flutter/material.dart';

class CustomTextDivider extends StatelessWidget {
  final String text;
  const CustomTextDivider({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          NewDivider(),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          NewDivider(),
        ],
      ),
    );
  }
}

class NewDivider extends StatelessWidget {
  const NewDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        color: Colors.black,
        thickness: 1.5,
        indent: 5,
        endIndent: 5,
      ),
    );
  }
}
