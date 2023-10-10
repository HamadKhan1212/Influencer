import 'package:flutter/material.dart';
import 'package:homescreen/constants/changing_screen.dart';
import 'package:homescreen/constants/reusable_text.dart';

import 'event_detail.dart';

class SuspendisseInterdum extends StatefulWidget {
  const SuspendisseInterdum({Key? key}) : super(key: key);

  @override
  State<SuspendisseInterdum> createState() => _SuspendisseInterdumState();
}

class _SuspendisseInterdumState extends State<SuspendisseInterdum> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: (AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              backScreen(context);
            },
            child: Image.asset(
              'images/icons/backIcon.png',
              color: Colors.black,
            ),
          ),
        )),
        backgroundColor: const Color(0xffECE9EF),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset('images/assets/image12.png'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          'images/icons/shareIcon.png',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableText(
                      title: 'Suspendisse interdum',
                      size: 21,
                      weight: FontWeight.w700,
                    ),
                    Image(image: AssetImage('images/icons/alaramIcon.png'))
                  ],
                ),
              ),
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
                height: 20,
              ),
              const ReusableText(
                title:
                    'Fusce felis purus, placerat et ligula a, mattis\ncondimentum est. Aenean ac felis non nunc mattis\nfeugiat sed id elit. Fusce in pretium ante, in lobortis\nlectus. Mauris egestas nibh suscipit blandit\nullamcorper.\n\nNulla ac congue dolor. Quisque sit amet nunc ex.\nAenean convallis mi ut libero venenatis finibus.\nQuisque viverra sem nec congue posuere.',
                color: Color(0xff616377),
                weight: FontWeight.w500,
                size: 14,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  nextScreen(context, const EventDetails());
                },
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff1C73FF).withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 5), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff1C73FF)),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                    child: ReusableText(
                      title: 'Apply Nows',
                      weight: FontWeight.w500,
                      color: Colors.white,
                      size: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffffffff)),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 140, vertical: 15),
                    child: ReusableText(
                      title: 'Add Influencer',
                      weight: FontWeight.w500,
                      color: Colors.black,
                      size: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
