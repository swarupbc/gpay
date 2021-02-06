import 'package:flutter/material.dart';

class CirclePeople extends StatelessWidget {
  final AssetImage peopleImage;
  final String peopleName;

  const CirclePeople({@required this.peopleImage, @required this.peopleName});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10.0,
          ),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: peopleImage,
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        Text(peopleName),
      ],
    );
  }
}
