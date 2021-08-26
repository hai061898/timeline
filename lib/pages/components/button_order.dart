import 'package:flutter/material.dart';
import 'package:plants/utils/color.dart';

class ButtonOrder extends StatelessWidget {
  const ButtonOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.all(10),
     height: 60,
     width: MediaQuery.of(context).size.width * 0.8,
     decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(100),
         color: kColorWhite,
         boxShadow: [
           BoxShadow(
             color: Color(0xffe3e3e3),
             offset: Offset(6, 2),
             blurRadius: 1.0,
             spreadRadius: 2.0,
           )
         ]),
     child: TextButton(
       onPressed: () {},
       style: TextButton.styleFrom(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(100),
         )
       ),
       child: Text(
         "ORDER SEEDS",
         style: TextStyle(
           fontFamily: "Poppins",
           color: Colors.black87,
           fontSize: 18,
         ),
       ),
     ),
                    );
  }
}
