import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TrackingListViewSubject {
  double value;
  String h1;
  String h2;
  String h3;
  Color color;
  String percentage;
  TrackingListViewSubject({
    required this.value,
    required this.h1,
    required this.h2,
    required this.h3,
    required this.percentage,
    required this.color,
  });
}

class TrackingListView extends StatelessWidget {
  TrackingListView({Key? key}) : super(key: key);

  final List<TrackingListViewSubject> list = [
    TrackingListViewSubject(
        h1: 'Follower/\nReach growth',
        h2: '5 weeks to complete',
        h3: '6 task completed \nout of 12 ',
        color: const Color(0xffF1C40F),
        value: 0.5,
        percentage: '50%'),
    TrackingListViewSubject(
        h1: 'Monetisation\nGoals',
        h2: '3 weeks to complete',
        h3: '4 task completed\nout of 16 ',
        color: const Color(0xffE74C3C),
        value: 0.25,
        percentage: '25%'),
    TrackingListViewSubject(
        h1: 'Content creation\nrate goals',
        h2: '5 weeks to complete',
        h3: '4 task completed\nout of 12 ',
        color: const Color(0xff1ABC9C),
        value: 0.3,
        percentage: '30%'),
    TrackingListViewSubject(
        h1: 'Follower\nengagement rates',
        h2: '3 weeks to complete',
        h3: '4 task completed\nout of 16 ',
        color: const Color(0xffF3498DB),
        value: 0.25,
        percentage: '25%'),
    TrackingListViewSubject(
        h1: 'Platform specific\ngrowth strategies',
        h2: '3 weeks to complete',
        h3: '4 task completed\nout of 12',
        color: const Color(0xffF1C40F),
        value: 0.3,
        percentage: '30%'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        height: 260,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  width: 180,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircularPercentIndicator(
                        reverse: true,
                        progressColor: list[index].color,
                        radius: 40.0,
                        lineWidth: 6.0,
                        animation: false,
                        backgroundColor: list[index].color,
                        backgroundWidth: 1,
                        percent: list[index].value,
                        center: ReusableText(
                          title: list[index].percentage,
                          weight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ReusableText(
                        title: list[index].h1,
                        size: 16,
                        color: Colors.black,
                        weight: FontWeight.w700,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ReusableText(
                        title: list[index].h2,
                        size: 13,
                        weight: FontWeight.w400,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ReusableText(
                        title: list[index].h3,
                        size: 13,
                        weight: FontWeight.w400,
                      ),
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
