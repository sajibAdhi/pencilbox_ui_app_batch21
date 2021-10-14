import 'package:pencilbox/screens/account/set_password_page.dart';
import 'package:pencilbox/screens/layout/app_layout.dart';
import 'package:pencilbox/widgets/CustomTextDivider.dart';
import 'package:pencilbox/widgets/custom_back_button.dart';
import 'package:pencilbox/widgets/custom_floating_action_button.dart';
import 'package:pencilbox/widgets/custom_footer.dart';
import 'package:pencilbox/widgets/custom_linear_progress_indecator.dart';
import 'package:pencilbox/widgets/custom_text_from_field.dart';
import 'package:pencilbox/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          AppLayout(
            children: [
              CustomBackButton(),
              CustomLinearProgressIndecator(progressValue: 0.8),
              CustomTitle(
                title: 'Provide your Mobile No and Email Address (atlast one)',
              ),
              CustomTextFromField(
                labelText: 'Country Code',
                initialValue: "Bangladesh (+880)",
              ),
              CustomTextFromField(labelText: 'Mobile Number'),
              CustomTextDivider(text: 'OR'),
              CustomTextFromField(labelText: 'Email'),
            ],
          ),
          CustomFooter(),
          CustomFloatingActionButton(
            widget: SetPasswordPage(),
          ),
        ],
      )),
    );
  }
}
