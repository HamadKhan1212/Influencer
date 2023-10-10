import 'package:flutter/material.dart';

import '../../constants/inquaryRow.dart';
import '../../constants/reusable_text.dart';

class GetOfferBottomSheet extends StatelessWidget {
  const GetOfferBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.height * 0.72,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const ReusableText(
                    textAlign: TextAlign.center,
                    title: 'Proin id metus ac mi mole stie\nsollici tudin',
                    size: 21,
                    weight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ReusableText(
                    title: 'i-Tech Art Limited',
                    color: Colors.red,
                    size: 14,
                    weight: FontWeight.w400,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const ReusableText(
                    textAlign: TextAlign.center,
                    color: Color(0xff616377),
                    size: 14,
                    weight: FontWeight.w500,
                    title:
                        'Cras bibendum, sapien at ultrices commodo, ex\nurna elementum nisl, sed rutrum eros magna\ndignissim dolor.',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(
                      color: const Color(0xffF1C40F),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const ReusableText(
                      title: 'Exclusive Offers',
                      weight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ReusableText(
                      color: Color(0xff616377),
                      size: 12,
                      weight: FontWeight.w500,
                      textAlign: TextAlign.center,
                      title:
                          'If you choose aliquet mattis now you will get 50% discount\non our most popular subscriptions.'),
                  const SizedBox(
                    height: 15,
                  ),
                  const InquaryRow(
                    title: 'Aliquam ac nulla sit amet quam aliquet mattis.',
                  ),
                  const InquaryRow(
                    title: 'Vesti bulum vestibulum ut  sed suscipit.',
                  ),
                  const InquaryRow(
                    title: 'Nunc id erat a elit placerat porta a in mi.',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: InkWell(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff1C73FF).withOpacity(0.5),
                                spreadRadius: -2,
                                blurRadius: 4,
                                offset: const Offset(
                                    0, 5), // changes position of shadow
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff1C73FF)),
                        child: const ReusableText(
                          title: 'Get This Offer',
                          color: Colors.white,
                          weight: FontWeight.w500,
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
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xff3498DB),
                        offset: Offset(0, 0.5),
                        blurRadius: 10,
                        spreadRadius: 1)
                  ],
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: const Color(0xff3498DB))),
              child: Image.asset('images/assets/logo3.png'),
            ),
          ),
        ],
      ),
    );
  }
}
