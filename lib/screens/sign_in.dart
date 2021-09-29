import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    var _customBlueColor = Color(0xff0ff143458);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: _size.width / 20,
          vertical: _size.height / 25,
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 36,
                  color: _customBlueColor,
                ),
              ),
            ),
            SizedBox(
              height: _size.height / 20,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Username, Email or Mobile No',
                  labelStyle: TextStyle(
                    color: _customBlueColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: _size.height / 50,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Forgot Username?',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(
              height: _size.height / 20,
            ),
            Container(
              child: Column(
                children: [
                  Text('Sign In with Social',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                    ),
                  ),
                  Container(
                    height: _size.height/10,
                    child: Row(
                      children: [
                        // IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.icons),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
