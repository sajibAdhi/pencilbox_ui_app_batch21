import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Genders { male, female, others }

class GenderModel {
  final IconData icon;
  final value;
  final String label;

  GenderModel(this.icon, this.value, this.label);

  static List<GenderModel> getGenders() {
    return [
      GenderModel(FontAwesomeIcons.male, Genders.male, "Male"),
      GenderModel(FontAwesomeIcons.female, Genders.female, "Female"),
      GenderModel(FontAwesomeIcons.transgender, Genders.others, "Others"),
    ];
  }
}
