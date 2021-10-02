import 'package:exam3/screens/search_job.dart';
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
            ClipRect(
              child: Container(
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
                  Text(
                    'Sign In with Social',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  Container(
                    height: _size.height / 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.google,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                        SizedBox(
                          width: _size.width / 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.blue,
                            size: 50,
                          ),
                        ),
                        SizedBox(
                          width: _size.width / 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.blue,
                            size: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: _size.height / 20,
                  ),
                  Text(
                    'Don\'t have an Account?',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: _size.height / 40,
                  ),
                  Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchJob(),
            ),
          );
        },
        child: FaIcon(
          FontAwesomeIcons.arrowRight,
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
