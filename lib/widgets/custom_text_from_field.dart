import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final String labelText;
  final String initialValue;
  const CustomTextFromField(
      {Key? key, required this.labelText, this.initialValue = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.circular(10.0),
    );
    
    return Container(
      child: TextFormField(
        initialValue: initialValue,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Color(0xFF2b527a),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
        ),
      ),
    );
  }
}
