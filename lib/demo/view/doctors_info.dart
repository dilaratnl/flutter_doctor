import 'package:doctor/demo/const/doctors_const.dart';
import 'package:doctor/demo/widget/column_mini_container.dart';
import 'package:doctor/demo/widget/tabbarlearn_bottomnavigation.dart';
import 'package:doctor/demo/widget/text_large_detail.dart';
import 'package:flutter/material.dart';

class DoctorsInfo extends StatelessWidget {
  const DoctorsInfo({super.key});

  final double _height = 2.3;
  final double _fontSize = 18;
  final double _maxradius = 50;
  final double _iconSize = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height / _height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: DoctorsConst.color_purple,
                borderRadius: BorderRadius.only(
                  bottomRight: DoctorsConst.radius140,
                  bottomLeft: DoctorsConst.radius140,
                ),
              )),
          DoctorsConst.sizedBoxHeigt50,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: TextLarge(
                text: DoctorsConst.info_title,
                color: DoctorsConst.color_black,
                fontSize: 25,
              )),
              DoctorsConst.sizedBoxHeigt30,
              Text(DoctorsConst.info_lorem,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: DoctorsConst.color_grey, fontSize: _fontSize)),
              DoctorsConst.sizedBoxHeigt5,
            ],
          ),
          DoctorsConst.sizedBoxHeigt85,
          CircleAvatar(
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NavigationBarLearn()));
                },
                icon: Icon(
                  Icons.arrow_forward,
                  color: DoctorsConst.color_white,
                ),
                color: DoctorsConst.color_purple,
                iconSize: _iconSize),
            maxRadius: _maxradius,
          ),
        ],
      ),
    );
  }
}
