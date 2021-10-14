import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatefulWidget {
  final String labelText;

  const CustomPasswordTextField({Key? key, required this.labelText})
      : super(key: key);

  @override
  _CustomPasswordTextFieldState createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  final textFieldFocusNode = FocusNode();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.circular(10.0),
    );

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: Color(0xFF2b527a),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _showPassword = !_showPassword;
              });
            },
            child: Icon(
              _showPassword ? Icons.visibility : Icons.visibility_off,
            ),
          ),
        ),
        obscureText: !_showPassword,
      ),
    );
  }
}
