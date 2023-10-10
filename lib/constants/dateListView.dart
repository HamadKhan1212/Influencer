import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';

class DateCalenderListListViewSubject {
  String date;
  String day;

  DateCalenderListListViewSubject({
    required this.date,
    required this.day,
  });
}

class DateCalenderListListView extends StatefulWidget {
  const DateCalenderListListView({Key? key}) : super(key: key);

  @override
  State<DateCalenderListListView> createState() =>
      _DateCalenderListListViewState();
}

class _DateCalenderListListViewState extends State<DateCalenderListListView> {
  final List<DateCalenderListListViewSubject> list = [
    DateCalenderListListViewSubject(date: '21', day: 'Sun'),
    DateCalenderListListViewSubject(date: '22', day: 'Mon'),
    DateCalenderListListViewSubject(date: '23', day: 'Tue'),
    DateCalenderListListViewSubject(date: '24', day: 'Wed'),
    DateCalenderListListViewSubject(date: '25', day: 'Thu'),
    DateCalenderListListViewSubject(date: '26', day: 'Fri'),
    DateCalenderListListViewSubject(date: '27', day: 'Sat'),
    DateCalenderListListViewSubject(date: '28', day: 'Sun'),
  ];
  int currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentIndex == index
                          ? const Color(0xff0062FF)
                          : Colors.transparent),
                  padding: const EdgeInsets.all(10),
                  width: 50,
                  child: Column(
                    children: [
                      ReusableText(
                        title: list[index].date,
                        weight: FontWeight.w700,
                        color:
                            currentIndex == index ? Colors.white : Colors.black,
                        size: 14,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ReusableText(
                        title: list[index].day,
                        weight: FontWeight.w400,
                        color:
                            currentIndex == index ? Colors.white : Colors.black,
                        size: 12,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
