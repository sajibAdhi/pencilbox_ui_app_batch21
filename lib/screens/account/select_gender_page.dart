import 'package:exam3/models/gender.dart';
import 'package:exam3/screens/layout/app_layout.dart';
import 'package:exam3/widgets/custom_back_button.dart';
import 'package:exam3/widgets/custom_linear_progress_indecator.dart';
import 'package:exam3/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class SelectGenderPage extends StatelessWidget {
  const SelectGenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Gender> _gender = Gender.getGenders();
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          AppLayout(
            children: [
              CustomBackButton(),
              CustomLinearProgressIndecator(progressValue: 0.3),
              CustomTitle(title: 'Select Gender'),
              
            ],
          ),
        ],
      )),
    );
  }
}
