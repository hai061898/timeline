import 'package:flutter/material.dart';
import 'package:plants/utils/color.dart';

class Intro extends StatelessWidget {
  final String? title;
  final String? subtitle;

  Intro({
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title!,
            style: TextStyle(
              color: kColorWhite,
              fontSize: 45,
              fontFamily: "Saudagar",
            ),
          ),
          Divider(
            thickness: 1,
            color: kColorWhite,
            indent: MediaQuery.of(context).size.width * 0.25,
            endIndent: MediaQuery.of(context).size.width * 0.25,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            subtitle!,
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20,
              color: kColorWhite,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}