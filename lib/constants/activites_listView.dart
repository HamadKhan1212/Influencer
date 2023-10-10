import 'package:flutter/material.dart';
import 'package:homescreen/constants/changing_screen.dart';
import 'package:homescreen/constants/reusable_text.dart';

import '../screen/home_screen/post_screens/calender_detail/calender_detail.dart';

class ActivitiesListViewSubject {
  String h1;
  Widget rowh2;
  String image;
  String h3;
  Color color1;
  Color color2;
  Color color3;

  Widget widget;
  ActivitiesListViewSubject({
    required this.image,
    required this.rowh2,
    required this.color3,
    required this.widget,
    required this.h1,
    required this.h3,
    required this.color1,
    required this.color2,
  });
}

class ActivitiesListView extends StatelessWidget {
  ActivitiesListView({Key? key}) : super(key: key);

  final List<ActivitiesListViewSubject> list = [
    ActivitiesListViewSubject(
      image: 'images/icons/instagram.png',
      h1: '10:30 PM, Yesterday',
      rowh2: const ReusableText(
        title: 'Instagram post',
      ),
      h3: '+2 posts ',
      color1: const Color(0xffFCF2F0),
      color2: const Color(0xffF9A80A),
      color3: Colors.black,
      widget: const ReusableText(
        title: 'Image',
        weight: FontWeight.w500,
        size: 12,
      ),
    ),
    ActivitiesListViewSubject(
      image: 'images/icons/facebook.png',
      h1: '10:30 PM, Yesterday',
      color3: Colors.black,
      rowh2: const ReusableText(
        title: 'Facebook Post',
      ),
      h3: '+2 posts ',
      color1: const Color(0xffEDF5FA),
      color2: const Color(0xff1877F2),
      widget: const ReusableText(
        title: 'Image',
        weight: FontWeight.w500,
        size: 12,
      ),
    ),
    ActivitiesListViewSubject(
      image: 'images/icons/snapchat.png',
      h1: '10:30 PM, Yesterday',
      rowh2: const ReusableText(
        title: 'Snapchat post',
      ),
      h3: '+3 posts ',
      color1: const Color(0xffFCF2F0),
      color2: const Color(0xffFFFF00),
      color3: Colors.black,
      widget: const ReusableText(
        title: 'Image',
        weight: FontWeight.w500,
        size: 12,
      ),
    ),
    ActivitiesListViewSubject(
        image: 'images/icons/instagram.png',
        h1: '10:30 PM, Yesterday',
        rowh2: const ReusableText(
          title: 'Instagram post',
        ),
        h3: 'Error ',
        color3: Colors.red,
        color1: const Color(0xffFCF2F0),
        color2: const Color(0xffF9A80A),
        widget: const Icon(
          Icons.info,
          color: Colors.red,
        )),
    ActivitiesListViewSubject(
      image: 'images/icons/tektok.png',
      h1: '10:30 PM, Yesterday',
      color3: Colors.black,
      rowh2: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffDCEBFF)),
            child: const ReusableText(
              title: 'New',
              color: Color(0xff1877F2),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const ReusableText(
            title: 'Tiktok post',
          ),
        ],
      ),
      h3: '+2 posts ',
      color1: const Color(0xffE6F7F3),
      color2: const Color(0xffFF0050),
      widget: const ReusableText(
        title: 'Image',
        weight: FontWeight.w500,
        size: 12,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {
              if (index == 0) {
                nextScreen(context, const CalenderDetail());
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                padding: const EdgeInsets.only(right: 15),
                height: 77,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Container(height: 45, width: 2, color: list[index].color2),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(list[index].image)),
                          shape: BoxShape.circle,
                          color: list[index].color1),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: list[index].h1,
                          weight: FontWeight.w500,
                          size: 14,
                        ),
                        const SizedBox(
                          height: 05,
                        ),
                        list[index].rowh2
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        list[index].widget,
                        const SizedBox(
                          height: 08,
                        ),
                        ReusableText(
                          title: list[index].h3,
                          weight: FontWeight.w400,
                          color: list[index].color3,
                          size: 12,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
