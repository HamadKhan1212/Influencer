import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';

import '../../constants/chart.dart';
import '../../constants/dateListView.dart';
import '../../constants/inquiryListView.dart';
import '../../constants/manager_conts_wideget.dart';
import '../../constants/manager_listView.dart';
import '../../constants/reusable_text.dart';

class Manager extends StatefulWidget {
  const Manager({Key? key}) : super(key: key);

  @override
  State<Manager> createState() => _ManagerState();
}

class _ManagerState extends State<Manager> {
  int _currentIndex = 0;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffECE9EF),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffFFFFFF)),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _currentIndex = 0;
                          });
                        },
                        child: Container(
                            width: 180,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _currentIndex == 0
                                    ? const Color(0xff3498DB)
                                    : const Color(0xffFFFFFF)),
                            child: Center(
                                child: Text(
                              "Experience Hub",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: _currentIndex == 0
                                      ? const Color(0xffFFFFFF)
                                      : const Color(0xff000000)),
                            ))),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _currentIndex = 1;
                          });
                        },
                        child: Container(
                            width: 180,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: _currentIndex == 1
                                    ? const Color(0xff3498DB)
                                    : const Color(0xffFFFFFF)),
                            child: Center(
                              child: Text(
                                "Inquiry inbox",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: _currentIndex == 1
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xff000000)),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                _currentIndex == 0
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Our Events",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "Here you will find experiences in your\narea and the compensation",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentIndex = 0;
                                    });
                                  },
                                  child: Container(
                                    height: 27,
                                    width: 27,
                                    padding: const EdgeInsets.all(7),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: currentIndex == 0
                                          ? const Color(0xff12C6FF)
                                          : const Color(0xffDCF7FF),
                                    ),
                                    child: const Center(
                                        child: Image(
                                      image: AssetImage(
                                        "images/icons/detailpng.png",
                                      ),
                                    )),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: SizedBox(
                                      height: 25,
                                      width: 2,
                                      child: VerticalDivider(
                                        thickness: 2,
                                        color: Color(0xff1D1E25),
                                      )),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentIndex = 1;
                                    });
                                  },
                                  child: Container(
                                    height: 27,
                                    width: 27,
                                    padding: const EdgeInsets.all(7),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: currentIndex == 1
                                          ? const Color(0xff12C6FF)
                                          : const Color(0xffDCF7FF),
                                    ),
                                    child: const Center(
                                        child: Image(
                                      image: AssetImage(
                                        "images/icons/menuIcon.png",
                                      ),
                                      height: 27,
                                      width: 27,
                                    )),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            currentIndex == 0
                                ? Container(
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  width: 60,
                                                ),
                                                Container(
                                                  height: 300,
                                                  color:
                                                      const Color(0xffE2E2EA),
                                                  width: 1,
                                                ),
                                                const SizedBox(
                                                  width: 300,
                                                ),
                                                Container(
                                                  height: 85,
                                                  width: 2,
                                                  color:
                                                      const Color(0xffE2E2EA),
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
                                                  color:
                                                      const Color(0xffE2E2EA),
                                                  width: 1,
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10),
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
                                            const ManagerConstWidget()
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 75,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffE74C3C),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "20th June",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          const Expanded(
                                            flex: 1,
                                            child: DottedDashedLine(
                                              width: 2,
                                              axis: Axis.vertical,
                                              height: 560,
                                              dashHeight: 3,
                                              dashColor: Color(0xffE74C3C),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 199,
                                              child: ManagerListView()),
                                        ],
                                      )
                                    ],
                                  )
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: ReusableText(
                                title:
                                    'We can boost revenue by creating a product',
                                size: 16,
                                weight: FontWeight.w400,
                              ),
                            ),
                            Chart(),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: ReusableText(
                                title: 'Inquiry Card',
                                size: 18,
                                weight: FontWeight.w700,
                              ),
                            ),
                            InquiryListView()
                          ],
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
