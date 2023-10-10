import 'package:flutter/material.dart';

import '../../constants/changing_screen.dart';
import '../../constants/flower_growth_chart.dart';
import '../../constants/reusable_text.dart';

class MovieDetail extends StatefulWidget {
  const MovieDetail({Key? key}) : super(key: key);
  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        // fit: StackFit.expand,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'images/assets/image14.png',
                        ))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            backScreen(
                              context,
                            );
                          },
                          child: Image.asset('images/icons/backIcon.png')),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Image.asset('images/icons/shareIcon.png'))
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.28,
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffECE9EF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const ReusableText(
                      title:
                          'The Last of Us Part II - Release\nDate Reveal Trailer | PS4',
                      size: 21,
                      weight: FontWeight.w700,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'images/icons/clock.png',
                          color: const Color(0xffE74C3C),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const ReusableText(
                          title: '23 Mins Ago',
                          color: Color(0xffE74C3C),
                          weight: FontWeight.w400,
                          size: 11,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          'images/icons/visibility.png',
                          color: const Color(0xffE74C3C),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const ReusableText(
                          title: '233 Views',
                          color: Color(0xffE74C3C),
                          weight: FontWeight.w400,
                          size: 11,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image.asset('images/assets/bottomsheetimage1.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        const ReusableText(
                          title: 'BeerBiceps',
                          size: 16,
                          weight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/icons/visibility.png',
                          color: const Color(0xff8E91AD),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const ReusableText(
                          title: '4.3M Followers',
                          color: Color(0xff8E91AD),
                          weight: FontWeight.w400,
                          size: 11,
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(7),
                          width: 83,
                          height: 28,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xffF1C40F)),
                          child: const ReusableText(
                            title: 'Subscribe',
                            weight: FontWeight.w500,
                            size: 11,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const ReusableText(
                      title:
                          'Fusce felis purus, placerat et ligula a, mattis condim\nentum est.',
                      color: Color(0xff616377),
                      weight: FontWeight.w500,
                      size: 14,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const FlowerGrowthChart(),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReusableText(
                      title: 'Age Engagement Rate:',
                      weight: FontWeight.w500,
                      size: 14,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'images/icons/Percentage.png',
                            height: 130,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 14,
                                    width: 14,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff3498DB)),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  const ReusableText(
                                    title: '10-25:    45%',
                                    size: 14,
                                    weight: FontWeight.w500,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 14,
                                    width: 14,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffE74C3C)),
                                  ),
                                  const SizedBox(width: 6),
                                  const ReusableText(
                                    title: '10-25:    45%',
                                    size: 14,
                                    weight: FontWeight.w500,
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    height: 14,
                                    width: 14,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff1ABC9C)),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  const ReusableText(
                                    title: '10-25:    45%',
                                    size: 14,
                                    weight: FontWeight.w500,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff1C73FF).withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 5), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff1C73FF)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 110, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ReusableText(
                                title: 'Create Chat',
                                weight: FontWeight.w500,
                                color: Colors.white,
                                size: 14,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
