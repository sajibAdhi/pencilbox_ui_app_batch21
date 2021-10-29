import 'package:flutter/material.dart';
import 'package:pencilbox/screens/layout/app_layout.dart';
import 'package:pencilbox/screens/search_job.dart';
import 'package:pencilbox/widgets/custom_linear_progress_indecator.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {


  @override
  void initState() {
    super.initState();

    // Timer(Duration(seconds: 5), () {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => SignIn()));
    // });
  }


  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: AppLayout(
          children: [
            ImageIconWidget(size: _size),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: _size.width * 0.25),
              margin: EdgeInsets.only(top: 80),
              child: CustomLinearProgressIndecator(),
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

class ImageIconWidget extends StatelessWidget {
  const ImageIconWidget({
    Key? key,
    required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: _size.height / 2,
      width: _size.width,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SearchJob()));
        },
        child: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.cover,
          width: _size.width / 3,
        ),
      ),
    );
  }
}
