import 'package:exam3/screens/layout/app_layout.dart';
import 'package:exam3/widgets/custom_back_button.dart';
import 'package:exam3/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class SelectGenderPage extends StatelessWidget {
  const SelectGenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          AppLayout(
            widgets: [
              CustomBackButton(),
              Container(
                alignment: Alignment.center,
                width: _size.width / 1.5,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  color: Colors.green[900],
                  minHeight: 5,
                  value: 0.3,
                ),
              ),
              CustomTitle(title: 'Select Gender'),
            ],
          ),
        ],
      )),
    );
  }
}
