import 'package:exams/exam4/widgets/custom_skills_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'account.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: _size.height / 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: _size.width / 8),
                child: LinearPercentIndicator(
                  width: _size.width - 100,
                  lineHeight: 6.0,
                  percent: 0.2,
                  progressColor: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: _size.width / 20, right: _size.width / 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: _size.width / 8,
                    ),
                    const Text(
                      'Select skills from the list',
                      style: TextStyle(fontSize: 26, color: Color(0xFF122F51)),
                    ),
                    SizedBox(
                      height: _size.width / 15,
                    ),
                    CustomCard(text: "Accounting/Finance", bgColor: Colors.transparent),
                    CustomCard(text: "Media/Advertisement/Event Mgt.", bgColor: Colors.transparent),
                    CustomCard(text: "Medical/Pharma", bgColor: Colors.transparent),
                    CustomCard(text: "NGO/Development", bgColor: Colors.transparent),
                    CustomCard(text: "Research/Consultancy", bgColor: Colors.transparent),
                    CustomCard(text: "Secretary/Receptionist", bgColor: Colors.transparent),
                  ]
                ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AccountPage()));
        },
        backgroundColor: Colors.red,
        child: Icon(
          Icons.arrow_forward,
          size: 30,
        ),
      )
    );
  }
}
