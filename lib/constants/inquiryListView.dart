import 'package:flutter/material.dart';
import 'package:homescreen/constants/changing_screen.dart';
import 'package:homescreen/constants/reusable_text.dart';

import '../screen/manager/get_offer.dart';

class InquiryListViewSubjrct {
  String logoImage;
  String h2;
  String h1;
  Color h2color;
  InquiryListViewSubjrct(
      {required this.h1,
      required this.h2,
      required this.logoImage,
      required this.h2color});
}

class InquiryListView extends StatefulWidget {
  InquiryListView({Key? key}) : super(key: key);

  @override
  State<InquiryListView> createState() => _InquiryListViewState();
}

class _InquiryListViewState extends State<InquiryListView> {
  final List<InquiryListViewSubjrct> list = [
    InquiryListViewSubjrct(
        h1: 'Proin id metus ac mi molestie\nsollicitudin',
        h2: 'BJSS, Leeds',
        h2color: const Color(0xff3153A1),
        logoImage: 'images/assets/logo1.png'),
    InquiryListViewSubjrct(
        h1: 'Morbi euismod neque et\nefficitur ultrices',
        h2: 'ELITEX, London',
        h2color: const Color(0xffF1C40F),
        logoImage: 'images/assets/logo2.png'),
    InquiryListViewSubjrct(
        h1: 'Proin id metus ac mi molestie\nsollicitudin quis ac diam',
        h2: 'iTechArt Group, London',
        h2color: const Color(0xff1ABC9C),
        logoImage: 'images/assets/logo3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {
              if (index == 0) {
                nextScreen(context, const GetOffer());
              }
            },
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: list[index].h1,
                            size: 15,
                            weight: FontWeight.w500,
                          ),
                          Image.asset(
                            list[index].logoImage,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ReusableText(
                          title: list[index].h2,
                          size: 14,
                          weight: FontWeight.w400,
                          color: list[index].h2color,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const ReusableText(
                            title:
                                'Nam lacinia dictum felis, nec lacinia velit\nviverra id. Nunc eu ipsum mi. ',
                            size: 11,
                            color: Color(0xff616377),
                            weight: FontWeight.w500,
                          ),
                          Image.asset('images/icons/share.png')
                        ],
                      ),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
