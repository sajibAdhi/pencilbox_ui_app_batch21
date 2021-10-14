import 'package:exam3/models/gender.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderButtons extends StatefulWidget {
  const GenderButtons({Key? key}) : super(key: key);

  @override
  _GenderButtonsState createState() => _GenderButtonsState();
}

class _GenderButtonsState extends State<GenderButtons> {
  var _selected;

  @override
  void initState() {
    super.initState();
    _selected = null;
  }

  @override
  Widget build(BuildContext context) {
    final List<Gender> _gender = Gender.getGenders();
    final _size = MediaQuery.of(context).size;

    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: _gender.length,
        itemBuilder: (context, _index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selected = _index;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: _size.height / 15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(),
                color: (_index == _selected) ? Color(0xff2e64a4) : Colors.white,
              ),
              child: Row(
                children: [
                  FaIcon(
                    _gender[_index].icon,
                    color: (_index == _selected) ? Colors.white : Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text(
                    _gender[_index].label,
                    style: TextStyle(
                      fontSize: 16,
                      color:
                          (_index == _selected) ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
