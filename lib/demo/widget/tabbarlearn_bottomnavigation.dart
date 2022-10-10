import 'package:doctor/demo/const/doctors_const.dart';
import 'package:doctor/demo/view/doctors_appointment.dart';
import 'package:doctor/demo/view/doctors_detail.dart';
import 'package:doctor/demo/view/doctors_home.dart';
import 'package:doctor/demo/view/doctors_info.dart';
import 'package:doctor/demo/view/doctors_record.dart';
import 'package:flutter/material.dart';

class NavigationBarLearn extends StatefulWidget {
  const NavigationBarLearn({super.key});

  @override
  State<NavigationBarLearn> createState() => _NavigationBarLearnState();
}

class _NavigationBarLearnState extends State<NavigationBarLearn> {
  int _selectedIndex = 0;
  List<Widget> _bottomList = [
    DoctorsHome(),
    DoctorsDetail(),
    DoctorsAppointment(),
    DoctorsRecord(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 35,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: DoctorsConst.color_grey,
          selectedItemColor: DoctorsConst.color_purple,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.paste), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: '')
          ]),
          body: _bottomList.elementAt(_selectedIndex),
    );
  }
}
