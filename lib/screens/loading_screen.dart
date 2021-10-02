import 'package:flutter/material.dart';

import 'search_job.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 5), (){
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: _size.height / 3),
              height: _size.height / 2,
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchJob()));
                },
                child: Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width / 2,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              width: _size.width / 3,
              child: LinearProgressIndicator(
                color: Colors.black87,
                backgroundColor: Colors.grey,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'PencilBox',
                    style: TextStyle(
                      fontSize: 40,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
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
