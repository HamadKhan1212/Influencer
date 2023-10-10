import 'package:flutter/material.dart';
import 'package:homescreen/constants/changing_screen.dart';
import 'package:homescreen/constants/reusable_text.dart';

import '../../constants/brand_alartDialog.dart';
import 'brands_widets/containe_row.dart';

class BrandManager3 extends StatefulWidget {
  const BrandManager3({Key? key}) : super(key: key);

  @override
  State<BrandManager3> createState() => _BrandManager3State();
}

class _BrandManager3State extends State<BrandManager3> {
  List<bool> list1 = [false, false, false];
  List<bool> list2 = [false, false, false];
  bool question1 = true;
  bool question2 = true;
  bool question3 = true;
  bool question4 = true;
  bool question5 = true;
  bool question6 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE9EF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            backScreen(context);
          },
          child: Image.asset(
            'images/icons/backIcon.png',
            color: const Color(0xff1D1E25),
          ),
        ),
        centerTitle: true,
        title: const ReusableText(
          title: 'Brand Manager',
          size: 21,
          weight: FontWeight.w700,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(bottom: 7, right: 3),
            child: Icon(
              Icons.edit,
              size: 20,
              color: Color(0xff1D1E25),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 21.0),
            child: ReusableText(
              title: 'Edit',
              color: Color(0xff1D1E25),
              size: 10,
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topLeft,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const SizedBox(
                                  width: 75,
                                ),
                                const ReusableText(
                                  title: 'BeerBiceps',
                                  size: 16,
                                  weight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                                const Spacer(),
                                Image.asset('images/assets/image3.png'),
                                const SizedBox(
                                  width: 5,
                                ),
                                Image.asset('images/assets/image4.png')
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 75.0, top: 10, bottom: 10),
                              child: ReusableText(
                                title:
                                    'Nulla a vulputate sem justo\nlaoreet quam viverra,',
                                size: 12,
                                color: Color(0xff8E91AD),
                              ),
                            ),
                            const Divider(
                              thickness: 2,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const ReusableText(
                              textAlign: TextAlign.start,
                              title: 'Your Connected Account',
                              size: 14,
                              weight: FontWeight.w500,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'images/icons/facebook.png',
                                  height: 45,
                                  width: 45,
                                ),
                                Image.asset(
                                  'images/icons/twitter.png',
                                  height: 45,
                                  width: 45,
                                ),
                                Image.asset(
                                  'images/icons/instagram.png',
                                  height: 45,
                                  width: 45,
                                ),
                                Image.asset(
                                  'images/icons/linkedIn.png',
                                  height: 45,
                                  width: 45,
                                ),
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffF1C40F),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: double.infinity,
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff1C73FF)
                                        .withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ]),
                                child: ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return const BrandDialog();
                                      },
                                    );
                                  },
                                  child: const ReusableText(
                                    title: 'Add Account',
                                    weight: FontWeight.w700,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 65,
                        width: 65,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/assets/Image2.png')),
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ReusableText(
                title: 'Likes',
                size: 14,
                weight: FontWeight.w500,
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                children: [
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Music',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Food Lover',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Travel',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Pet',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Car driving',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Make-up',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Outfit of the day',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Happy place',
                        size: 14,
                        weight: FontWeight.w400,
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const ReusableText(
                title: 'DisLikes',
                size: 14,
                weight: FontWeight.w500,
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                children: [
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Smoking',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Drink and drive',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Sad',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#lonely',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Haters',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Brokenheart',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Chip(
                      backgroundColor: const Color(0xffE0DBE5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      clipBehavior: Clip.none,
                      label: const ReusableText(
                        title: '#Depression',
                        size: 14,
                        weight: FontWeight.w400,
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const ReusableText(
                title: 'Your Brand colors',
                size: 14,
                weight: FontWeight.w500,
              ),
              const ContainerRow(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffD5D1DA)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Examples',
                              size: 12,
                              weight: FontWeight.w500,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ReusableText(
                              textAlign: TextAlign.center,
                              title: 'Cursing\nbool',
                              size: 12,
                              weight: FontWeight.w500,
                            ),
                            ReusableText(
                              textAlign: TextAlign.center,
                              title: 'Adult\nmaterial\nearnings bool',
                              size: 12,
                              weight: FontWeight.w500,
                            ),
                            ReusableText(
                              textAlign: TextAlign.center,
                              title: 'Family\nfreidnly\nbool',
                              size: 12,
                              weight: FontWeight.w500,
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const ReusableText(
                                title:
                                    'User Uses Bad\nLanguage In Their\nContent',
                                size: 12,
                                weight: FontWeight.w500,
                              ),
                              ...List.generate(
                                  3,
                                  (index) => Checkbox(
                                        activeColor: const Color(0xff1ABC9C),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        value: list1[index],
                                        onChanged: (v) {
                                          setState(() {
                                            list1[index] = v!;
                                          });
                                        },
                                      ))
                              // SizedBox(
                              //   width: 60,
                              //   child: Checkbox(
                              //     materialTapTargetSize:
                              //         MaterialTapTargetSize.shrinkWrap,
                              //     activeColor: Color(0xff1ABC9C),
                              //     shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(8)),
                              //     value: !question2,
                              //     onChanged: (bool? value) {
                              //       setState(() {
                              //         question2 = !(value ?? false);
                              //       });
                              //     },
                              //   ),
                              // ),
                              // SizedBox(
                              //   width: 60,
                              //   child: Checkbox(
                              //     materialTapTargetSize:
                              //         MaterialTapTargetSize.shrinkWrap,
                              //     activeColor: Color(0xff1ABC9C),
                              //     shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(8)),
                              //     value: !question2,
                              //     onChanged: (bool? value) {
                              //       setState(() {
                              //         question2 = question2 = !(value ?? false);
                              //       });
                              //     },
                              //   ),
                              // ),
                              // SizedBox(
                              //   width: 60,
                              //   child: Checkbox(
                              //     materialTapTargetSize:
                              //         MaterialTapTargetSize.shrinkWrap,
                              //     activeColor: Color(0xff1ABC9C),
                              //     shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(8)),
                              //     value: !question2,
                              //     onChanged: (bool? value) {
                              //       setState(() {
                              //         question2 = question2 = !(value ?? false);
                              //       });
                              //     },
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const ReusableText(
                                title: 'User Delivers\nChild-Friendly\nContent',
                                size: 12,
                                weight: FontWeight.w500,
                              ),
                              const SizedBox(),
                              ...List.generate(
                                  3,
                                  (index) => Checkbox(
                                        activeColor: const Color(0xff1ABC9C),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        value: list2[index],
                                        onChanged: (v) {
                                          setState(() {
                                            list2[index] = v!;
                                          });
                                        },
                                      ))
                              // SizedBox(),
                              // SizedBox(
                              //   width: 70,
                              //   child: Checkbox(
                              //     materialTapTargetSize:
                              //         MaterialTapTargetSize.shrinkWrap,
                              //     activeColor: Color(0xff1ABC9C),
                              //     shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(8)),
                              //     value: question2,
                              //     onChanged: (bool? value) {
                              //       setState(() {
                              //         question2 = value ?? false;
                              //       });
                              //     },
                              //   ),
                              // ),
                              // SizedBox(
                              //   width: 60,
                              //   child: Checkbox(
                              //     materialTapTargetSize:
                              //         MaterialTapTargetSize.shrinkWrap,
                              //     activeColor: Color(0xff1ABC9C),
                              //     shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(8)),
                              //     value: question2,
                              //     onChanged: (bool? value) {
                              //       setState(() {
                              //         question2 = value ?? false;
                              //       });
                              //     },
                              //   ),
                              // ),
                              // SizedBox(
                              //   width: 60,
                              //   child: Checkbox(
                              //     materialTapTargetSize:
                              //         MaterialTapTargetSize.shrinkWrap,
                              //     activeColor: Color(0xff1ABC9C),
                              //     shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(8)),
                              //     value: question2,
                              //     onChanged: (bool? value) {
                              //       setState(() {
                              //         question2 = value ?? false;
                              //       });
                              //     },
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
