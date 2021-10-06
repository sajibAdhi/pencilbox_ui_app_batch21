import 'package:exam3/widgets/custom_back_button.dart';
import 'package:exam3/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(),
                CustomTitle(),
                SizedBox(height: _size.height / 50),
                Padding(
                  padding: EdgeInsets.only(
                      top: _size.height / 20, left: _size.width / 40),
                  child: Text(
                    'Write Name',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: _size.height / 40, left: _size.width / 40),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(_size.width / 20),
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Color(0xFF150050)),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: _size.height / 2.5),
                // CustomFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
