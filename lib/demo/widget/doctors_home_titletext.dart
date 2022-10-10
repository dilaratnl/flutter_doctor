import 'package:doctor/demo/const/doctors_const.dart';
import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({super.key, required this.text});

  final String text;
  

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: DoctorsConst.color_black, fontWeight: FontWeight.bold,fontSize: 15,),
      );
  }
}