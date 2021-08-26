import 'package:flutter/material.dart';
import 'package:plants/data/data.dart';
import 'package:plants/pages/components/text_intro.dart';
import 'package:plants/utils/color.dart';
import 'package:plants/widgets/customAppBar.dart';

import 'components/button_order.dart';
import 'components/category_list.dart';
import 'components/plant_item.dart';
import 'components/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            Intro(
              title: "Explore plants",
              subtitle: "Trending plants for your home",
            ),
            Search(),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: kColorWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(

                  child: Column(
                    children: [
                     Categorylist(),
                      Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.width * 0.6,
                      child: ListView.builder(
                        itemBuilder: (ctx, i) => PlantItem(
                          plant: plantData[i] 
                        ),
                        itemCount:
                             plantData.length ,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                     ButtonOrder()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


