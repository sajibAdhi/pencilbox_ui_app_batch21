import 'package:exam3/screens/layout/app_layout.dart';
import 'package:exam3/widgets/custom_back_button.dart';
import 'package:exam3/widgets/custom_floating_action_button.dart';
import 'package:exam3/widgets/custom_footer.dart';
import 'package:exam3/widgets/custom_linear_progress_indecator.dart';
import 'package:exam3/widgets/custom_password_text_field.dart';
import 'package:exam3/widgets/custom_title.dart';
import 'package:exam3/widgets/set_as_user_buttons.dart';
import 'package:flutter/material.dart';

class SetPasswordPage extends StatelessWidget {
  const SetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          AppLayout(
            children: [
              CustomBackButton(),
              CustomLinearProgressIndecator(progressValue: 1),
              CustomTitle(
                title: 'Set as User ID ( Email Address / Mobile)',
              ),
              SetAsUserButtons(),
              CustomTitle(
                title: 'Type Password',
              ),
              Text(
                'Use at least 8 to 12 character',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              CustomPasswordTextField(
                labelText: 'Password',
              ),
              CustomPasswordTextField(labelText: 'Confirm Password'),
            ],
          ),
          CustomFooter(),
          CustomFloatingActionButton(),
        ],
      )),
    );
  }
}
