import 'package:flutter/material.dart';
import 'package:plants/data/data.dart';
import 'package:plants/pages/components/plant_item.dart';
import 'package:plants/pages/components/text_intro.dart';
import 'package:plants/widgets/customAppBar.dart';

class Timeline extends StatelessWidget {
  final int? id;
  Timeline({this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/bg2.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.6),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          CustomAppBar(),
                          Intro(
                            title: "Day 23",
                            subtitle: plantData[id!].name,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      padding: EdgeInsets.all(20),
                      child: Hero(
                        tag: plantData[id!].name.toString(),
                        child: Image.asset(plantData[id!].imageAsset.toString()),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        "Growing Plan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontFamily: "Saudagar"),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          TimelineEvent(
                            day: "In 1 day",
                            task: "Water your plant",
                          ),
                          TimelineEvent(
                            day: "In 2 days",
                            task: "Add Fertilizers",
                          ),
                          TimelineEvent(
                            day: "In 5 days",
                            task: "Show Sunlight",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}