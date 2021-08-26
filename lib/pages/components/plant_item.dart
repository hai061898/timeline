import 'package:flutter/material.dart';
import 'package:plants/data/plants_model.dart';
import 'package:plants/pages/time/time_line.dart';
import 'package:plants/utils/color.dart';
import 'package:timeline_tile/timeline_tile.dart';

class PlantItem extends StatelessWidget {
  
  const PlantItem({Key? key ,this.plant}): super(key: key);
  final PlantModel? plant;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => Timeline(
            id: plant!.id,
          ),
        ),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.3,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        offset: Offset(6, 2),
                        blurRadius: 3.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 0.9),
                        offset: Offset(-6, -2),
                        blurRadius: 3.0,
                        spreadRadius: 1.0,
                      ),
                    ]),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 9,
                  child: Container(
                    child: Hero(
                      tag: plant!.name.toString(),
                      child: Image.asset(this.plant!.imageAsset.toString()),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      plant!.name.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TimelineEvent extends StatelessWidget {
  final String? day;
  final String? task;

  TimelineEvent({this.day, this.task});

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.center,
      beforeLineStyle: LineStyle(color: kColorWhite, thickness: 2),
      afterLineStyle: LineStyle(color: kColorWhite, thickness: 2),
      indicatorStyle: IndicatorStyle(
        width: 20,
        padding: EdgeInsets.all(10),
        color: kColorWhite,
      ),
       startChild: Container(
        constraints: const BoxConstraints(minHeight: 120),
        child: Center(
          child: Text(
            task!,
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.white),
          ),
        ),
      ),
      endChild: Container(
        constraints: const BoxConstraints(minHeight: 120),
        child: Center(
          child: Text(
            day!,
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}