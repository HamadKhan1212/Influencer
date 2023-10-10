import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';

class MessageDialog extends StatelessWidget {
  const MessageDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 3,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 30,
              ),
              const ReusableText(
                title: 'Add Account',
                size: 17,
                weight: FontWeight.w700,
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        const Image(
                            image: AssetImage('images/icons/facebook.png')),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0xff3498DB), width: 2)),
                          child: const Icon(
                            Icons.check,
                            size: 15,
                            color: Color(0xff3498DB),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        const Image(
                            image: AssetImage('images/icons/twitter.png')),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0xff3498DB), width: 2)),
                          child: const Icon(
                            Icons.check,
                            size: 15,
                            color: Color(0xff3498DB),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        const Image(
                            image: AssetImage('images/icons/instagram.png')),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0xff3498DB), width: 2)),
                          child: const Icon(
                            Icons.check,
                            size: 15,
                            color: Color(0xff3498DB),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xff3498DB),
                          width: 2,
                        ),
                      ),
                      child: const Image(
                        image: AssetImage(
                          'images/icons/linkedIn.png',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Image(image: AssetImage('images/icons/youtube.png')),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 45,
                width: 285,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xff1C73FF),
                    ),
                    color: const Color(0xffEDF4FF)),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'e.g.linkedin.com/in/jhon-thijzen'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: const Color(0xff1C73FF).withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const ReusableText(
                        title: 'Add Account',
                        weight: FontWeight.w500,
                        size: 14,
                      ),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
