
import 'package:flutter/material.dart';
import 'package:plants/utils/color.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color:kIconColor,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color:kIconColor,
            ),
            onPressed: (){},
          )
        ],
      ),
    );
  }
}
