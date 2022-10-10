import 'package:doctor/demo/const/doctors_const.dart';
import 'package:doctor/demo/widget/text_large_detail.dart';
import 'package:flutter/material.dart';

class DoctorsRecord extends StatefulWidget {
  const DoctorsRecord({super.key});



  @override
  State<DoctorsRecord> createState() => _DoctorsRecordState();
}

class _DoctorsRecordState extends State<DoctorsRecord> {

final double _height1 = 1.4;
final double _height15 = 15;
final double _width1 = 1.2;
final double _fontSize17 = 17;
final double _width6 = 6;
final double _height6 = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Column(
        children: [
          Padding(
            padding: DoctorsConst.paddingGeneralOnlytop12,

            child: _rowAppbarIconText(context),
          ),
          _columunContainerFieldtextButton(context),
        ],
      )
    ]));
  }

  Column _columunContainerFieldtextButton(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: DoctorsConst.radius30,
                    topRight: DoctorsConst.radius30),
                child: Container(
                    height: MediaQuery.of(context).size.height / _height1,
                    width: MediaQuery.of(context).size.width,
                    color: DoctorsConst.color_lightpurpl_one,
                    child: Padding(
                      padding: DoctorsConst.paddingGeneral12,
                      child: Column(
                        children: [
                          _texttitle(),
                          DoctorsConst.sizedBoxHeigt10,
                          _textsubtitle(context),
                          DoctorsConst.sizedBoxHeigt20,
                          _textFieldName(),
                          DoctorsConst.sizedBoxHeigt15,
                          _textFieldEmail(),
                          DoctorsConst.sizedBoxHeigt15,
                          _textFieldPassword(),
                          DoctorsConst.sizedBoxHeigt15,
                          _textFieldContirnPass(),
                          DoctorsConst.sizedBoxHeigt70,
                          _elevatedButton(context),
                          DoctorsConst.sizedBoxHeigt10,
                          _rowText(context)
                        ],
                      ),
                    )))
          ],
        );
  }

  Row _rowText(BuildContext context) {
    return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                DoctorsConst.recordalready,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                        color: DoctorsConst.color_darkgrey,
                                        fontSize: _fontSize17),
                              ),
                              DoctorsConst.sizedBoxWidht5,
                              Text(
                                DoctorsConst.recordSign,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                        color: DoctorsConst.color_darkpurple,
                                        fontSize: _fontSize17),
                              )
                            ],
                          );
  }

  SizedBox _elevatedButton(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: DoctorsConst.borderRadiusCircular20,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(DoctorsConst.recordbutton,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontSize: 20, color: DoctorsConst.color_white)),
        ),
      ),
      width: MediaQuery.of(context).size.width / _width1,
      height: MediaQuery.of(context).size.height / _height15,
    );
  }

  TextField _textFieldContirnPass() {
    return TextField(
      decoration: InputDecoration(
        fillColor: DoctorsConst.color_white,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(DoctorsConst.radius20),
            borderSide: BorderSide.none),
        hintText: DoctorsConst.recordControlPas,
        hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
      ),
    );
  }

  TextField _textFieldPassword() {
    return TextField(
      decoration: InputDecoration(
        fillColor: DoctorsConst.color_white,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(DoctorsConst.radius20),
            borderSide: BorderSide.none),
        hintText: DoctorsConst.recordPassword,
        hintStyle: TextStyle(fontSize: _fontSize17, fontWeight: FontWeight.w500),
      ),
    );
  }

  TextField _textFieldEmail() {
    return TextField(
      decoration: InputDecoration(
        fillColor: DoctorsConst.color_white,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(DoctorsConst.radius20),
            borderSide: BorderSide.none),
        hintText: DoctorsConst.recordEmail,
        hintStyle: TextStyle(fontSize: _fontSize17, fontWeight: FontWeight.w500),
      ),
    );
  }

  TextField _textFieldName() {
    return TextField(
      decoration: InputDecoration(
          fillColor: DoctorsConst.color_white,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(DoctorsConst.radius20),
              borderSide: BorderSide.none),
          hintText: DoctorsConst.recordName,
          hintStyle: TextStyle(fontSize: _fontSize17, fontWeight: FontWeight.w500)),
    );
  }

  Text _textsubtitle(BuildContext context) {
    return Text(
      DoctorsConst.recordInfor,
      style: Theme.of(context)
          .textTheme
          .subtitle2
          ?.copyWith(color: DoctorsConst.color_darkgrey, fontSize: 18),
    );
  }

  TextLarge _texttitle() {
    return TextLarge(
        text: DoctorsConst.recordSubtitle,
        color: DoctorsConst.color_black,
        fontSize: 30);
  }

  Row _rowAppbarIconText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.add_location_rounded,
              size: 60,
              color: DoctorsConst.color_darkpurple,
            ),
            DoctorsConst.sizedBoxWidht5,
            TextLarge(
                text: DoctorsConst.record_title,
                color: DoctorsConst.color_purple,
                fontSize: 25)
          ],
        ),
        Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / _height6,
              width: MediaQuery.of(context).size.width / _width6,
              
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: DoctorsConst.color_lightpurple),
              child: Icon(Icons.add, size: 30),
            ),
          ],
        )
      ],
    );
  }
}
