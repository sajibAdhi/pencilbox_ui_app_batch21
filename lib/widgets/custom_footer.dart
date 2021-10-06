import 'package:flutter/material.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: _size.height / 20),
            child: Text(
              'For any help',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: _size.height / 60),
            child: Text(
              'Call at 16479',
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
