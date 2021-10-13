import 'package:exam3/models/gender.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderButtons extends StatelessWidget {
  const GenderButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Gender> _gender = Gender.getGenders();
    final _size = MediaQuery.of(context).size;
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: _gender.length,
        itemBuilder: (context, _index) {
          return GenderButton(size: _size, gender: _gender, index: _index);
        },
      ),
    );
  }
}

class GenderButton extends StatelessWidget {
  final Size size;
  final List<Gender> gender;
  final int index;
  const GenderButton({
    Key? key,
    required this.size,
    required this.gender,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: size.height / 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(),
      ),
      child: Row(
        children: [
          FaIcon(
            gender[index].icon,
            color: Colors.blue,
          ),
          SizedBox(width: 10),
          Text(
            gender[index].label,
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
