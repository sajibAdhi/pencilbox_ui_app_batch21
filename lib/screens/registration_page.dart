import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: _size.width / 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Registration',
                      style: TextStyle(fontSize: 32, color: Color(0xFF122F51)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Please choose your relevant type',
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: _size.height / 30, right: _size.width / 20),
                      child: PhysicalModel(
                        color: Colors.white,
                        elevation: 3,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          width: double.maxFinite,
                          height: 100,
                          child: Stack(
                            children: [
                              Image(
                                image: AssetImage(
                                    "assets/exam4/images/person.png"),
                                height: 80,
                              ),
                              Positioned(
                                top: 20,
                                left: 100,
                                child: Column(
                                  children: [
                                    const Text(
                                      'Functional Category',
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.red),
                                    ),
                                    const Text(
                                      'Finance, Media/ Advertisement',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: _size.height / 30, right: _size.width / 20),
                      child: PhysicalModel(
                        color: Colors.white,
                        elevation: 3,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          width: double.maxFinite,
                          height: 100,
                          child: Stack(
                            children: [
                              Image(
                                image: AssetImage(
                                    "assets/exam4/images/settings.png"),
                                height: 80,
                              ),
                              Positioned(
                                top: 20,
                                left: 90,
                                child: Column(
                                  children: [
                                    const Text(
                                      'Special Skilled Category',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Color(0xff122F51)),
                                    ),
                                    const Text(
                                      'Computer Operator, Mechanic',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _size.height / 4,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
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
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => SkillsPage()));
          },
          backgroundColor: Colors.red,
          child: Icon(
            Icons.arrow_forward,
            size: 30,
          ),
        ));
  }
}
