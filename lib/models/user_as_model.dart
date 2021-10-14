import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum UserAs { email, mobile }

class UserAsModel {
  final IconData icon;
  final value;
  final String label;

  UserAsModel(this.icon, this.value, this.label);

  static List<UserAsModel> getUserAs() {
    return [
      UserAsModel(FontAwesomeIcons.solidEnvelope, UserAs.email, "marium@pencilbox.edu.bd"),
      UserAsModel(FontAwesomeIcons.mobile, UserAs.mobile, "Mobile Number"),
    ];
  }
}
