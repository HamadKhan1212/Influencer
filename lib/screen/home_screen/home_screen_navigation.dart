import 'package:flutter/material.dart';
import 'package:homescreen/constants/changing_screen.dart';
import 'package:homescreen/constants/reusable_text.dart';

import '../../constants/activites_listView.dart';
import '../../constants/mainListview.dart';
import '../../constants/reusable_listview.dart';
import '../../constants/tracking_listView.dart';
import '../../widgets/user_profile.dart';
import '../brand_manager/brand_manager.dart';
import '../direct_message_and_comments/messages_and_comment.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffECE9EF),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                AppBarDetail(),
                MainListSubject(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: const ReusableText(
                    title: 'Profile Overview',
                    size: 18,
                    weight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: _currentIndex == 0
                                ? const Color(0xff3498DB)
                                : Colors.white),
                        child: ReusableText(
                          title: 'All',
                          color:
                              _currentIndex == 0 ? Colors.white : Colors.grey,
                          size: 14,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: _currentIndex == 1
                                ? const Color(0xff3498DB)
                                : Colors.white),
                        child: ReusableText(
                          title: 'Weekly',
                          size: 14,
                          color:
                              _currentIndex == 1 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = 2;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: _currentIndex == 2
                                ? const Color(0xff3498DB)
                                : Colors.white),
                        child: ReusableText(
                          title: 'Monthly',
                          size: 14,
                          color:
                              _currentIndex == 2 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        nextScreen(context, BrandManager());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffDCF7FF),
                        ),
                        child: Image.asset(
                          'images/icons/more.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                        height: 20, width: 2, color: const Color(0xff1D1E25)),
                    const SizedBox(
                      width: 7,
                    ),
                    InkWell(
                      onTap: () {
                        nextScreen(context, MessagesAndComment());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff12C6FF),
                        ),
                        child: Image.asset(
                          'images/icons/threedot.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    )
                  ],
                ),
                _currentIndex == 0
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OverViewSubject(),
                          const Divider(
                            thickness: 2,
                            color: Color(0xffDEE1E5),
                            indent: 20,
                            endIndent: 20,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const ReusableText(
                            title: 'Goal Tracking',
                            size: 18,
                            weight: FontWeight.w700,
                          ),
                          TrackingListView(),
                          const Divider(
                            thickness: 2,
                            color: Color(0xffDEE1E5),
                            indent: 20,
                            endIndent: 20,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ReusableText(
                                  title: 'Activities',
                                  size: 18,
                                  weight: FontWeight.w700,
                                ),
                                ReusableText(
                                  title: 'View All',
                                  size: 12,
                                  color: Color(0xff3498DB),
                                  weight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          ActivitiesListView()
                        ],
                      )
                    : _currentIndex == 1
                        ? Container(
                            height: 100,
                          )
                        : Container(
                            height: 200,
                          )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
