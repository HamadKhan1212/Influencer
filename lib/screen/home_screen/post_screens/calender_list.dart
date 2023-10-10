import 'package:flutter/material.dart';
import 'package:homescreen/constants/changing_screen.dart';
import 'package:homescreen/constants/reusable_text.dart';
import 'package:homescreen/screen/home_screen/post_screens/post_detail.dart';

import '../../../constants/activites_listView.dart';
import '../../../constants/dateListView.dart';
import 'calenderContsWidget.dart';

class CalenderList extends StatefulWidget {
  const CalenderList({Key? key}) : super(key: key);

  @override
  State<CalenderList> createState() => _CalenderListState();
}

class _CalenderListState extends State<CalenderList> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE9EF),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.all(5),
                height: 43,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      child: Container(
                        height: 35,
                        width: 178,
                        decoration: BoxDecoration(
                          boxShadow: [
                            _currentIndex == 0
                                ? BoxShadow(
                                    color: const Color(0xff1C73FF)
                                        .withOpacity(0.5),
                                    spreadRadius: -2,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        0, 5), // changes position of shadow
                                  )
                                : BoxShadow(
                                    color: const Color(0xff1C73FF)
                                        .withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 0,
                                    offset: const Offset(
                                        0, 0), // changes position of shadow
                                  ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: _currentIndex == 0
                              ? const Color(0xff3498DB)
                              : Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ReusableText(
                            title: 'Posts',
                            color: _currentIndex == 0
                                ? Colors.white
                                : Colors.black,
                            weight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      child: Container(
                        height: 35,
                        width: 178,
                        decoration: BoxDecoration(
                          boxShadow: [
                            _currentIndex == 1
                                ? BoxShadow(
                                    color: const Color(0xff1C73FF)
                                        .withOpacity(0.5),
                                    spreadRadius: -2,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        0, 5), // changes position of shadow
                                  )
                                : BoxShadow(
                                    color: const Color(0xff1C73FF)
                                        .withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 0,
                                    offset: const Offset(
                                        0, 0), // changes position of shadow
                                  ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: _currentIndex == 1
                              ? const Color(0xff3498DB)
                              : Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: ReusableText(
                            title: 'Calender',
                            color: _currentIndex == 1
                                ? Colors.white
                                : Colors.black,
                            weight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ReusableText(
                    title: 'Our Posts',
                    size: 19,
                    weight: FontWeight.w700,
                  ),
                  InkWell(
                    onTap: () {
                      nextScreen(context, const PostDetails());
                    },
                    child: Container(
                      height: 34,
                      width: 34,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff12C6FF)),
                      child: Image.asset('images/icons/moreIcon2.png'),
                    ),
                  ),
                ],
              ),
            ),
            _currentIndex == 0
                ? ActivitiesListView()
                : Container(
                    alignment: Alignment.topLeft,
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Container(
                              width: double.infinity,
                              color: const Color(0xffE2E2EA),
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 60,
                                ),
                                Container(
                                  height: 300,
                                  color: const Color(0xffE2E2EA),
                                  width: 1,
                                ),
                                const SizedBox(
                                  width: 300,
                                ),
                                Container(
                                  height: 85,
                                  width: 2,
                                  color: const Color(0xffE2E2EA),
                                )
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              color: const Color(0xffE2E2EA),
                              height: 1,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 60,
                                ),
                                Container(
                                  height: 300,
                                  color: const Color(0xffE2E2EA),
                                  width: 1,
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: ReusableText(
                                textAlign: TextAlign.start,
                                title: 'Jul 2023',
                                size: 16,
                                weight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            DateCalenderListListView(),
                            const SizedBox(
                              height: 10,
                            ),
                            const CalenderConstWidgets()
                          ],
                        ),
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
