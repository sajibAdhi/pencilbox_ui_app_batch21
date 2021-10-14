import 'package:pencilbox/screens/layout/app_layout.dart';
import 'package:pencilbox/widgets/CustomTextDivider.dart';
import 'package:pencilbox/widgets/custom_back_button.dart';
import 'package:pencilbox/widgets/custom_footer.dart';
import 'package:pencilbox/widgets/custom_linear_progress_indecator.dart';
import 'package:pencilbox/widgets/custom_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            AppLayout(children: [
              CustomBackButton(),
              CustomLinearProgressIndecator(progressValue: 0.6),
              CustomTitle(title: 'Create Your Free BdJobs Account')
            ]),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: _size.height / 20,
                      left: _size.width / 13,
                      right: _size.width / 13),
                  child: Container(
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FaIcon(FontAwesomeIcons.google,
                            size: 26, color: Colors.red),
                        const Text(
                          'Import from Google',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _size.height / 30,
                      left: _size.width / 13,
                      right: _size.width / 13),
                  child: Container(
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FaIcon(FontAwesomeIcons.facebookF,
                            size: 26, color: Colors.blue[900]),
                        const Text(
                          'Import from Facebook',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                CustomTextDivider(text: 'or'),
                Padding(
                  padding: EdgeInsets.only(
                      top: _size.height / 30,
                      left: _size.width / 13,
                      right: _size.width / 13),
                  child: Container(
                    height: 55,
                    width: double.maxFinite,
                    child: Center(
                      child: Text(
                        'Enter your information',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
            CustomFooter(),
          ],
        ),
      ),
    );
  }
}
