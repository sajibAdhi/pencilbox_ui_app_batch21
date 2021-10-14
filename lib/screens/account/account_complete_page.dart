import 'package:pencilbox/screens/layout/app_layout.dart';
import 'package:pencilbox/widgets/custom_back_button.dart';
import 'package:pencilbox/widgets/custom_center_icon_text_button.dart';
import 'package:pencilbox/widgets/custom_header.dart';
import 'package:pencilbox/widgets/custom_title.dart';
import 'package:flutter/material.dart';

class AccountCompletePage extends StatelessWidget {
  const AccountCompletePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AppLayout(
              children: [
                CustomBackButton(),
                Container(
                  margin: EdgeInsets.only(top: _size.height / 5),
                  width: _size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/congratulation.jpg",
                      // fit: BoxFit.cover,
                      height: _size.height / 5,
                      width: _size.width / 5,
                    ),
                  ),
                ),
                Center(child: CustomHeader('Congratulations!')),
                CustomTitle(
                    title: 'Your account has been created successfully.'),
                CustomCenterIconTextButton(
                  icon: Icons.search,
                  buttonText: "Find favorite jobs",
                  color: Colors.white,
                  buttonColor: Color(0xff2e64a4),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
