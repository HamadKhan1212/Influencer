import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';

import '../../constants/trends_listView.dart';

class AiDriven extends StatefulWidget {
  const AiDriven({Key? key}) : super(key: key);

  @override
  State<AiDriven> createState() => _AiDrivenState();
}

class _AiDrivenState extends State<AiDriven> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: (AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: () {},
            child: Image.asset(
              'images/icons/backIcon.png',
              color: Colors.black,
            ),
          ),
          title: const ReusableText(
            title: 'AI-driven Trend Analysis',
            color: Color(0xff1D1E25),
            size: 21,
            weight: FontWeight.w700,
          ),
        )),
        backgroundColor: const Color(0xffECE9EF),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffFFFFFF)),
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
                            width: 80,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  _currentIndex == 0
                                      ? BoxShadow(
                                          color: const Color(0xff1C73FF)
                                              .withOpacity(0.5),
                                          spreadRadius: -2,
                                          blurRadius: 4,
                                          offset: const Offset(0,
                                              5), // changes position of shadow
                                        )
                                      : BoxShadow(
                                          color: const Color(0xff1C73FF)
                                              .withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 0,
                                          offset: const Offset(0,
                                              0), // changes position of shadow
                                        ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: _currentIndex == 0
                                    ? const Color(0xff3498DB)
                                    : const Color(0xffFFFFFF)),
                            child: Center(
                                child: Text(
                              "All",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: _currentIndex == 0
                                      ? const Color(0xffFFFFFF)
                                      : const Color(0xff8E91AD)),
                            ))),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _currentIndex = 1;
                          });
                        },
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  _currentIndex == 1
                                      ? BoxShadow(
                                          color: const Color(0xff1C73FF)
                                              .withOpacity(0.5),
                                          spreadRadius: -2,
                                          blurRadius: 4,
                                          offset: const Offset(0,
                                              5), // changes position of shadow
                                        )
                                      : BoxShadow(
                                          color: const Color(0xff1C73FF)
                                              .withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 0,
                                          offset: const Offset(0,
                                              0), // changes position of shadow
                                        ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: _currentIndex == 1
                                    ? const Color(0xff3498DB)
                                    : const Color(0xffFFFFFF)),
                            child: Text(
                              "Trending",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: _currentIndex == 1
                                      ? const Color(0xffFFFFFF)
                                      : const Color(0xff8E91AD)),
                            )),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _currentIndex = 2;
                          });
                        },
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  _currentIndex == 2
                                      ? BoxShadow(
                                          color: const Color(0xff1C73FF)
                                              .withOpacity(0.5),
                                          spreadRadius: -2,
                                          blurRadius: 4,
                                          offset: const Offset(0,
                                              5), // changes position of shadow
                                        )
                                      : BoxShadow(
                                          color: const Color(0xff1C73FF)
                                              .withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 0,
                                          offset: const Offset(0,
                                              0), // changes position of shadow
                                        ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: _currentIndex == 2
                                    ? const Color(0xff3498DB)
                                    : const Color(0xffFFFFFF)),
                            child: Text(
                              "Content Ideas",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: _currentIndex == 2
                                      ? const Color(0xffFFFFFF)
                                      : const Color(0xff8E91AD)),
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                _currentIndex == 0
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Here We Suggest Ideas that\nget you on for you pages",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff3F3F3F)),
                              ),
                              const Spacer(),
                              Container(
                                height: 34,
                                width: 34,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff12C6FF)),
                                child: const Image(
                                    image: AssetImage(
                                        "images/icons/moreIcon2.png")),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(height: 530, child: TrendsListView())
                        ],
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
