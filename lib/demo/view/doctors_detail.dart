import 'package:doctor/demo/const/doctors_const.dart';
import 'package:doctor/demo/widget/text_large_detail.dart';
import 'package:flutter/material.dart';

class DoctorsDetail extends StatelessWidget {
  const DoctorsDetail({super.key});
  final double _iconsize = 30;
  final double _textsize = 25;
  final double _height = 1.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: DoctorsConst.color_lightpurple,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
                child: _appBar(),
              ),
              Container(
                height: MediaQuery.of(context).size.height / _height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: DoctorsConst.color_white,
                  borderRadius: BorderRadius.only(
                    topRight: DoctorsConst.radius40,
                    topLeft: DoctorsConst.radius40,
                  ),
                ),
                child: Padding(
                  padding: DoctorsConst.paddingGeneral20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _rowImagesTextNameIcons(context),
                      DoctorsConst.sizedBoxHeigt20,
                      _containerRowIconText(context),
                      DoctorsConst.sizedBoxHeigt10,
                      _rowTextAboutSee(),
                      DoctorsConst.sizedBoxHeigt10,
                      _textDetail(context),
                      DoctorsConst.sizedBoxHeigt10,
                      _rowIconTimesText(),
                      
                    ],
                  ),
                ),
              )
            ]));
  }

  Row _rowIconTimesText() {
    return Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: DoctorsConst.color_darkpurple,
                        ),DoctorsConst.sizedBoxWidht20,
                    TextLarge(
                        text: DoctorsConst.detailworking,
                        color: DoctorsConst.color_black,
                        fontSize: 17)
                      ],
                    );
  }

  Text _textDetail(BuildContext context) {
    return Text(
      DoctorsConst.detailsubtitle,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: DoctorsConst.color_darkgrey, fontSize: 15),
    );
  }

  Row _rowTextAboutSee() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextLarge(
            text: DoctorsConst.detailAbout,
            color: DoctorsConst.color_black,
            fontSize: 20),
        TextLarge(
            text: DoctorsConst.detailseeReview,
            color: DoctorsConst.color_amber,
            fontSize: 17)
      ],
    );
  }

  Container _containerRowIconText(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      decoration: BoxDecoration(
          borderRadius: DoctorsConst.borderRadiusCircular20,
          border: Border.all(color: DoctorsConst.color_darkpurple)),
      child: Padding(
        padding:
            const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _columnPatients(context),
          DoctorsConst.sizedBoxWidht10,
          _columnxperience(context),
          DoctorsConst.sizedBoxWidht20,
          _columunRating(context)
        ]),
      ),
    );
  }

  Column _columunRating(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            backgroundColor: DoctorsConst.color_lightgrey,
            child: Icon(
              Icons.message,
              color: DoctorsConst.color_amber,
              size: 35,
            )),
        DoctorsConst.sizedBoxHeigt10,
        Text(
          DoctorsConst.detailPointText,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontSize: 13, color: DoctorsConst.color_grey),
        ),
        DoctorsConst.sizedBoxHeigt10,
        TextLarge(
            text: DoctorsConst.detailPoint,
            color: DoctorsConst.color_darkgrey,
            fontSize: 20)
      ],
    );
  }

  Column _columnxperience(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            backgroundColor: DoctorsConst.color_lightgrey,
            child: Icon(
              Icons.account_circle,
              color: DoctorsConst.color_darkgrey,
              size: 35,
            )),
        DoctorsConst.sizedBoxHeigt10,
        Text(
          DoctorsConst.detailexperience,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontSize: 13, color: DoctorsConst.color_grey),
        ),
        DoctorsConst.sizedBoxHeigt10,
        TextLarge(
            text: DoctorsConst.detailYear,
            color: DoctorsConst.color_darkgrey,
            fontSize: 20)
      ],
    );
  }

  Column _columnPatients(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            backgroundColor: DoctorsConst.color_lightgrey,
            child: Icon(
              Icons.account_circle_outlined,
              size: 35,
              color: DoctorsConst.color_darkgrey,
            )),
        DoctorsConst.sizedBoxHeigt10,
        Text(
          DoctorsConst.detailPatients,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontSize: 13, color: DoctorsConst.color_grey),
        ),
        DoctorsConst.sizedBoxHeigt10,
        TextLarge(
            text: DoctorsConst.detailLike,
            color: DoctorsConst.color_darkgrey,
            fontSize: 20)
      ],
    );
  }

  Row _rowImagesTextNameIcons(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 8,
          width: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
              borderRadius: DoctorsConst.borderRadiusCircular30,
              color: DoctorsConst.color_lightgrey),
          child: Image.asset(DoctorsConst.image_doctorwoman),
        ),
        DoctorsConst.sizedBoxWidht10,
        _textNameRowIcons(context)
      ],
    );
  }

  Column _textNameRowIcons(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextLarge(
            text: DoctorsConst.home_containertitle_one,
            color: DoctorsConst.color_black,
            fontSize: _textsize),
        DoctorsConst.sizedBoxHeigt10,
        Text(DoctorsConst.home_episode,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: DoctorsConst.color_pink, fontSize: 15)),
        DoctorsConst.sizedBoxHeigt20,
        _rowIcons()
      ],
    );
  }

  Row _rowIcons() {
    return Row(
      children: [
        CircleAvatar(
            backgroundColor: DoctorsConst.color_iconphone,
            child: Icon(
              Icons.phone_outlined,
              color: DoctorsConst.color_purple,
            )),
        DoctorsConst.sizedBoxWidht20,
        CircleAvatar(
            backgroundColor: DoctorsConst.colorlightorange,
            child: Icon(
              Icons.video_camera_front_outlined,
              color: DoctorsConst.colordarkpink,
            )),
        DoctorsConst.sizedBoxWidht20,
        CircleAvatar(
            backgroundColor: DoctorsConst.colorlightblue,
            child: Icon(
              Icons.message_outlined,
              color: DoctorsConst.color_darkblue,
            ))
      ],
    );
  }

  Row _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.arrow_back_rounded,
          color: DoctorsConst.color_white,
          size: _iconsize,
        ),
        TextLarge(
            text: DoctorsConst.detail,
            color: DoctorsConst.color_white,
            fontSize: _textsize),
        Icon(
          Icons.menu,
          color: DoctorsConst.color_white,
          size: _iconsize,
        )
      ],
    );
  }
}
