import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Genders { male, female, others }

class Gender {
  final IconData icon;
  final value;
  final String label;

  Gender(this.icon, this.value, this.label);

  static List<Gender> getGenders() {
    return [
      Gender(FontAwesomeIcons.male, Genders.male, "Male"),
      Gender(FontAwesomeIcons.female, Genders.female, "Female"),
      Gender(FontAwesomeIcons.male, Genders.male, "Others"),
    ];
  }
}
