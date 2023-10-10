import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';

class BottomSheetListViewSubjrct {
  String logoImage;
  String h2;
  String h1;
  String h3;

  BottomSheetListViewSubjrct({
    required this.h1,
    required this.h2,
    required this.logoImage,
    required this.h3,
  });
}

class BottomSheetPreviewAllListView extends StatefulWidget {
  const BottomSheetPreviewAllListView({Key? key}) : super(key: key);

  @override
  State<BottomSheetPreviewAllListView> createState() =>
      _BottomSheetPreviewAllListViewState();
}

class _BottomSheetPreviewAllListViewState
    extends State<BottomSheetPreviewAllListView> {
  final List<BottomSheetListViewSubjrct> list = [
    BottomSheetListViewSubjrct(
        h1: 'Mauris faucibus',
        h2: 'Nulla a vulputate sem',
        h3: 'full preview',
        logoImage: 'images/assets/bottomsheetimage2.png'),
    BottomSheetListViewSubjrct(
        h1: 'Lita Sibestine',
        h2: 'Nulla a vulputate sem',
        h3: 'full preview',
        logoImage: 'images/assets/bottomsheetimage3.png'),
    BottomSheetListViewSubjrct(
        h1: 'Duis laoreet',
        h2: 'Nulla a vulputate sem',
        h3: 'full preview',
        logoImage: 'images/assets/bottomsheetimage4.png'),
    BottomSheetListViewSubjrct(
        h1: 'Praesent eget',
        h2: 'Nulla a vulputate sem',
        h3: 'full preview',
        logoImage: 'images/assets/bottomsheetimage5.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height * 0.31,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Center(
                  child: Row(
                children: [
                  Image.asset(list[index].logoImage),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        title: list[index].h1,
                        size: 13,
                        weight: FontWeight.w500,
                      ),
                      ReusableText(
                        title: list[index].h2,
                        size: 12,
                        weight: FontWeight.w500,
                        color: const Color(0xff8E91AD),
                      )
                    ],
                  ),
                  const Spacer(),
                  ReusableText(
                    title: list[index].h3,
                    color: const Color(0xff1C73FF),
                  )
                ],
              )),
            ),
          );
        },
      ),
    );
  }
}
