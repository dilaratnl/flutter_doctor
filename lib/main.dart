import 'package:doctor/demo/view/doctors_appointment.dart';
import 'package:doctor/demo/view/doctors_detail.dart';
import 'package:doctor/demo/widget/tabbarlearn_bottomnavigation.dart';
import 'package:doctor/demo/view/doctors_home.dart';
import 'package:doctor/demo/view/doctors_info.dart';
import 'package:doctor/demo/view/doctors_record.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(  

        
        primarySwatch: Colors.purple,
      ),
      home: const DoctorsDetail(),
      debugShowCheckedModeBanner: false,
    );
  }
}
