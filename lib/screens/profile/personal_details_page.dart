import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pencilbox/screens/profile/personal_details_edit_page.dart';
import 'package:pencilbox/widgets/custom_footer.dart';

class PersonalDetailsPage extends StatelessWidget {
  const PersonalDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color _baseColor = Color(0xff122f51);
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: _baseColor,
        leading: BackButton(),
        title: Text('Personal Details'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PersonalDetailsEditPage(),
                  ),
                );
              },
              icon: Icon(FontAwesomeIcons.edit),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PersonalDetailsHeader(size: _size, baseColor: _baseColor),
            PersonalDetailsForm(size: _size, baseColor: _baseColor),
            SizedBox(height: _size.height * 0.05),
            CustomFooter(),
          ],
        ),
      ),
    );
  }
}

class PersonalDetailsForm extends StatelessWidget {
  const PersonalDetailsForm({
    Key? key,
    required Size size,
    required Color baseColor,
  })  : _size = size,
        _baseColor = baseColor,
        super(key: key);

  final Size _size;
  final Color _baseColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      height: _size.height * 0.4,
      width: double.infinity,
      // decoration: BoxDecoration(color: Colors.yellow),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BorderLessTextFormField(
                size: _size,
                hintText: 'Father\'s Name',
                prefixIcon: FontAwesomeIcons.male,
              ),
              BorderLessTextFormField(
                size: _size,
                hintText: 'Mother\'s Name',
                prefixIcon: FontAwesomeIcons.female,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BorderLessTextFormField(
                size: _size,
                hintText: 'Date Of Birth',
                prefixIcon: FontAwesomeIcons.calendar,
              ),
              BorderLessTextFormField(
                size: _size,
                hintText: 'Religion',
                prefixIcon: FontAwesomeIcons.bookMedical,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BorderLessTextFormField(
                    size: _size,
                    hintText: 'Gender',
                    prefixIcon: FontAwesomeIcons.venusMars,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: _size.width * 0.13),
                    child: Text(
                      'Female',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: _baseColor,
                      ),
                    ),
                  ),
                ],
              ),
              BorderLessTextFormField(
                size: _size,
                hintText: 'Marital Status',
                prefixIcon: FontAwesomeIcons.ring,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BorderLessTextFormField(
                size: _size,
                hintText: 'Nationality',
                prefixIcon: FontAwesomeIcons.solidFlag,
              ),
              BorderLessTextFormField(
                size: _size,
                hintText: 'National Id No',
                prefixIcon: FontAwesomeIcons.idCard,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PersonalDetailsHeader extends StatelessWidget {
  const PersonalDetailsHeader({
    Key? key,
    required Size size,
    required Color baseColor,
  })  : _size = size,
        _baseColor = baseColor,
        super(key: key);

  final Size _size;
  final Color _baseColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _size.height * 0.3,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: _baseColor,
                width: 2,
              ),
              color: Colors.white,
            ),
            child: Icon(
              FontAwesomeIcons.userPlus,
              size: 50,
              color: _baseColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Sajib Adhikary',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              'tosajibadhi@gmail.com',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BorderLessTextFormField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  const BorderLessTextFormField(
      {Key? key,
      required Size size,
      required this.hintText,
      required this.prefixIcon})
      : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _size.width * 0.5,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.black,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
