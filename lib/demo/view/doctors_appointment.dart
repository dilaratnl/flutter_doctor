import 'package:doctor/demo/const/doctors_const.dart';
import 'package:doctor/demo/widget/card_meeting.dart';
import 'package:doctor/demo/widget/text_large_detail.dart';
import 'package:flutter/material.dart';

class DoctorsAppointment extends StatefulWidget {
  const DoctorsAppointment({super.key});
  final double _height = 200;
  final double _width = 100;

  @override
  State<DoctorsAppointment> createState() => _DoctorsAppointmentState();
}

class _DoctorsAppointmentState extends State<DoctorsAppointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 15, top: 60, right: 15),
      child: Column(
        children: [
          _rowAppbar(),
          DoctorsConst.sizedBoxHeigt20,
          _rowContainerMonthTextIcon(context),
          DoctorsConst.sizedBoxHeigt20,
          CardMeeting(text: DoctorsConst.home_containertitle_two,image: DoctorsConst.image_doctorwoman,),
          DoctorsConst.sizedBoxHeigt40,
          CardMeeting(
            text: DoctorsConst.home_containertitle_one,
            image: DoctorsConst.image_homecard,
          )
        ],
      ),
    ));
  }

  Row _rowMonthTimesIconText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _rowIconMonth(context),
        _rowTimes(context),
        _rowConfirmed(context)
      ],
    );
  }

  Row _rowIconMonth(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.calendar_today_outlined,
          color: DoctorsConst.color_grey,
          size: 18,
        ),
        DoctorsConst.sizedBoxWidht5,
        Text(
          DoctorsConst.number,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: DoctorsConst.color_grey, fontSize: 12),
        ),
        DoctorsConst.sizedBoxWidht5,
        Text(
          DoctorsConst.numberone,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: DoctorsConst.color_grey, fontSize: 12),
        )
      ],
    );
  }

  Row _rowTimes(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.access_time_sharp,
          size: 18,
          color: DoctorsConst.color_pink,
        ),
        DoctorsConst.sizedBoxWidht5,
        Text(
          DoctorsConst.times,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: DoctorsConst.color_pink, fontSize: 12),
        ),
      ],
    );
  }

  Row _rowConfirmed(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.do_disturb_on_rounded,
          color: DoctorsConst.color_green,
          size: 18,
        ),
        Text(
          DoctorsConst.confirmed,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: DoctorsConst.color_grey, fontSize: 12),
        )
      ],
    );
  }

  Row _rowImageIconsText(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 14,
          width: MediaQuery.of(context).size.width / 6.5,
          decoration: BoxDecoration(
              borderRadius: DoctorsConst.borderRadiusCircular15,
              color: DoctorsConst.color_lightgrey),
          child: Image.asset(DoctorsConst.image_doctorwoman),
        ),
        DoctorsConst.sizedBoxWidht10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextLarge(
                text: DoctorsConst.home_containertitle_two,
                color: DoctorsConst.color_black,
                fontSize: 17),
            DoctorsConst.sizedBoxHeigt5,
            Text(
              DoctorsConst.home_episode_one,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: DoctorsConst.color_pink, fontSize: 13),
            ),
            DoctorsConst.sizedBoxHeigt10,
            Row(
              children: [
                iconsStar(),
                iconsStar(),
                iconsStar(),
                iconsStar(),
                iconsStar(),
                DoctorsConst.sizedBoxWidht10,
                TextLarge(
                    text: DoctorsConst.point,
                    color: DoctorsConst.color_black,
                    fontSize: 15)
              ],
            ),
          ],
        )
      ],
    );
  }

  Row _rowContainerMonthTextIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              child: Icon(
                Icons.calendar_month_outlined,
                size: 50,
                color: DoctorsConst.color_pink,
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: DoctorsConst.color_grey),
                  borderRadius: DoctorsConst.borderRadiusCircular10),
            ),
            DoctorsConst.sizedBoxWidht10,
            TextLarge(
                text: DoctorsConst.number,
                color: DoctorsConst.color_black,
                fontSize: 50),
            DoctorsConst.sizedBoxWidht10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DoctorsConst.moon,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: DoctorsConst.color_grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                DoctorsConst.sizedBoxHeigt5,
                TextLarge(
                    text: DoctorsConst.numberone,
                    color: DoctorsConst.color_black,
                    fontSize: 14)
              ],
            ),
          ],
        ),
        _textIcon(context)
      ],
    );
  }

  Row _textIcon(BuildContext context) {
    return Row(
      children: [
        Text(
          DoctorsConst.upcoming,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: DoctorsConst.color_grey, fontSize: 15),
        ),
        DoctorsConst.sizedBoxWidht5,
        Icon(
          Icons.arrow_drop_down,
          size: 30,
          color: DoctorsConst.color_darkgrey,
        )
      ],
    );
  }

  Row _rowAppbar() {
    return Row(
      children: [
        Icon(
          Icons.arrow_back_sharp,
          color: DoctorsConst.color_grey,
          size: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 75),
          child: TextLarge(
              text: DoctorsConst.appointment,
              color: DoctorsConst.color_grey,
              fontSize: 23),
        )
      ],
    );
  }
}

class iconsStar extends StatelessWidget {
  const iconsStar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star, color: DoctorsConst.color_amber, size: 13);
  }
}
