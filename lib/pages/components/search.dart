import 'package:flutter/material.dart';
import 'package:plants/utils/color.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: TextField(
        autofocus: true,
        style: TextStyle(color: kColorWhite, fontFamily: "Poppins"),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 25),
          border: OutlineInputBorder(borderSide: BorderSide.none),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: kColorWhite),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
            borderSide: BorderSide(width: 1, color: kColorWhite),
          ),
          hintStyle: TextStyle(color: kColorWhite, fontFamily: "Poppins"),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.search,
              color: kIconColor,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
