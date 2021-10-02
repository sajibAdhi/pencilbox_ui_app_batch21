import 'dart:async';

import 'package:exam3/screens/sign_in.dart';
import 'package:exam3/widgets/linear_progress_bar.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 5,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  SignIn())
                      );
                    },
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: MediaQuery.of(context).size.width / 2.5,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: MyStatefulWidget(),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    Text(
                      'PencilBox',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Training Institute',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                'v1.0.0.16(85)',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
