import 'package:pencilbox/screens/account/contact_page.dart';
import 'package:pencilbox/screens/layout/app_layout.dart';
import 'package:pencilbox/widgets/custom_floating_action_button.dart';
import 'package:pencilbox/widgets/custom_back_button.dart';
import 'package:pencilbox/widgets/custom_footer.dart';
import 'package:pencilbox/widgets/custom_linear_progress_indecator.dart';
import 'package:pencilbox/widgets/custom_title.dart';
import 'package:pencilbox/widgets/gender_buttons.dart';
import 'package:flutter/material.dart';

class SelectGenderPage extends StatelessWidget {
  const SelectGenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          AppLayout(
            children: [
              CustomBackButton(),
              CustomLinearProgressIndecator(progressValue: 0.6),
              CustomTitle(title: 'Select Gender'),
              GenderButtons(),
            ],
          ),
          CustomFooter(),
          CustomFloatingActionButton(
            widget: ContactPage(),
          ),
        ],
      )),
    );
  }
}
