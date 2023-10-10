import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';

import '../../constants/inquaryRow.dart';
import 'get_offer_bottom_sheet.dart';

class GetOffer extends StatefulWidget {
  const GetOffer({Key? key}) : super(key: key);

  @override
  State<GetOffer> createState() => _GetOfferState();
}

class _GetOfferState extends State<GetOffer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: FloatingActionButton(
          backgroundColor: const Color(0xff1ABC9C),
          onPressed: () {},
          child: Image.asset('images/icons/messageIcon.png'),
        ),
      ),
      backgroundColor: const Color(0xffECE9EF),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              height: 86,
              width: 86,
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
                  border: Border.all(color: const Color(0xff3498DB))),
              child: Image.asset('images/assets/logo3.png'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ReusableText(
            textAlign: TextAlign.center,
            title: 'Proin id metus ac mi mole stie\nsollici tudin',
            size: 21,
            weight: FontWeight.w500,
          ),
          const SizedBox(
            height: 20,
          ),
          const ReusableText(
            title: 'i-Tech Art Limited',
            color: Colors.red,
            size: 14,
            weight: FontWeight.w400,
          ),
          const SizedBox(
            height: 10,
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
            height: 20,
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
            height: 20,
          ),
          const ReusableText(
            color: Color(0xff616377),
            size: 14,
            weight: FontWeight.w500,
            textAlign: TextAlign.center,
            title:
                'If you choose aliquet mattis now you will get\n50% discount on our most popular\nsubscriptions.',
          ),
          const SizedBox(
            height: 20,
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
          const InquaryRow(
            title: 'Nunc id erat a elit placerat porta a in mi.',
          ),
          const InquaryRow(
            title: 'Nunc id erat a elit placerat porta a in mi.',
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (BuildContext context) {
                    return const GetOfferBottomSheet();
                  },
                );
              },
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
                        offset:
                            const Offset(0, 5), // changes position of shadow
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
          ),
        ],
      ),
    );
  }
}
