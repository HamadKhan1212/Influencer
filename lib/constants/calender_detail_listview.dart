import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';

class DateCalenderDetailListViewSubject {
  String date;
  String day;

  DateCalenderDetailListViewSubject({
    required this.date,
    required this.day,
  });
}

class DateCalenderDetailListView extends StatefulWidget {
  const DateCalenderDetailListView({Key? key}) : super(key: key);

  @override
  State<DateCalenderDetailListView> createState() =>
      _DateCalenderDetailListViewState();
}

class _DateCalenderDetailListViewState
    extends State<DateCalenderDetailListView> {
  final List<DateCalenderDetailListViewSubject> list = [
    DateCalenderDetailListViewSubject(date: '21', day: 'Sun'),
    DateCalenderDetailListViewSubject(date: '22', day: 'Mon'),
    DateCalenderDetailListViewSubject(date: '23', day: 'Tue'),
    DateCalenderDetailListViewSubject(date: '24', day: 'Wed'),
    DateCalenderDetailListViewSubject(date: '25', day: 'Thu'),
    DateCalenderDetailListViewSubject(date: '26', day: 'Fri'),
    DateCalenderDetailListViewSubject(date: '27', day: 'Sat'),
    DateCalenderDetailListViewSubject(date: '28', day: 'Sun'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              padding: const EdgeInsets.all(10),
              width: 50,
              child: Column(
                children: [
                  ReusableText(
                    title: list[index].day,
                    weight: FontWeight.w500,
                    color: const Color(0xff111111),
                    size: 12,
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  ReusableText(
                    title: list[index].date,
                    weight: FontWeight.w500,
                    color: const Color(0xff7C84A3),
                    size: 14,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
