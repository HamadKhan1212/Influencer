import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';
import 'package:homescreen/screen/home_screen/post_screens/calender_detail/widgets/calander_detail_container.dart';

import '../../../../constants/calender_detail_listview.dart';

class CalenderDetail extends StatefulWidget {
  const CalenderDetail({Key? key}) : super(key: key);
  @override
  State<CalenderDetail> createState() => _CalenderDetailState();
}

class _CalenderDetailState extends State<CalenderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE9EF),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                ),
              ),
              const ReusableText(
                title: 'March 2023',
              ),
              Container(
                height: 30,
                width: 35,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const DateCalenderDetailListView(),
          const CalenderDetailContainer(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 20,
                ),
              ),
              const ReusableText(
                title: 'March 2023',
              ),
              Container(
                height: 30,
                width: 35,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const DateCalenderDetailListView(),
          const CalenderDetailContainer(),
        ],
      ),
    );
  }
}
