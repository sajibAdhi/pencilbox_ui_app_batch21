import 'package:pencilbox/models/user_as_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SetAsUserButtons extends StatefulWidget {
  const SetAsUserButtons({Key? key}) : super(key: key);

  @override
  _SetAsUserButtonsState createState() => _SetAsUserButtonsState();
}

class _SetAsUserButtonsState extends State<SetAsUserButtons> {
  var _selected;

  @override
  void initState() {
    super.initState();
    _selected = null;
  }

  @override
  Widget build(BuildContext context) {
    final List<UserAsModel> _gender = UserAsModel.getUserAs();
    final _size = MediaQuery.of(context).size;

    return Container(
      height: 150,
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
              height: _size.height / 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(),
                color: (_index == _selected) ? Color(0xff2e64a4) : Colors.white,
              ),
              child: Row(
                children: [
                  FaIcon(
                    _gender[_index].icon,
                    size: 20,
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
