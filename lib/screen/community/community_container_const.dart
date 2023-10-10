import 'package:flutter/material.dart';

import '../../constants/reusable_text.dart';

class CommunityContainerConst extends StatelessWidget {
  final String title;
  final String location;
  final String lastSeen;
  final String followers;
  final String accountHolderName;
  final String accountHolderDetail;
  final String profileImage;
  final Color buttonColor;

  const CommunityContainerConst(
      {Key? key,
      required this.title,
      required this.location,
      required this.lastSeen,
      required this.followers,
      required this.accountHolderName,
      required this.accountHolderDetail,
      required this.profileImage,
      required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          children: [
            Row(
              children: [
                const Image(
                  image: AssetImage('images/icons/yt.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ReusableText(
                  title: title,
                  size: 14,
                  weight: FontWeight.w500,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Image.asset('images/icons/location.png'),
                  const SizedBox(
                    width: 8,
                  ),
                  ReusableText(
                    title: location,
                    color: const Color(0xff8E91AD),
                    size: 11,
                    weight: FontWeight.w500,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Image.asset('images/icons/visibility.png'),
                  const SizedBox(
                    width: 8,
                  ),
                  ReusableText(
                    title: lastSeen,
                    color: const Color(0xff8E91AD),
                    size: 11,
                    weight: FontWeight.w500,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Image.asset('images/icons/visibility.png'),
                  const SizedBox(
                    width: 8,
                  ),
                  ReusableText(
                    title: followers,
                    color: const Color(0xff8E91AD),
                    size: 11,
                    weight: FontWeight.w500,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(
                thickness: 2,
                color: Color(0xffF3F3F3),
              ),
            ),
            Row(
              children: [
                Image.asset(profileImage),
                const SizedBox(
                  width: 7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: accountHolderName,
                      weight: FontWeight.w500,
                      size: 12,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    ReusableText(
                      title: accountHolderDetail,
                      weight: FontWeight.w500,
                      size: 11,
                      color: const Color(0xff8E91AD),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(7),
                  width: 83,
                  height: 28,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: buttonColor),
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
                  'Nunc condimentum bibendum ultricies. Maecenas ut preum\nne que. Nam tincidunt sapien et semper luctus.',
              color: Color(0xff7A7D98),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Image.asset('images/icons/question.png'),
                const SizedBox(
                  width: 5,
                ),
                const ReusableText(
                  title: 'Asked Questions',
                  size: 11,
                  weight: FontWeight.w400,
                ),
                const Spacer(),
                Image.asset('images/icons/message.png'),
                const SizedBox(
                  width: 5,
                ),
                const ReusableText(
                  title: 'Send Message',
                  size: 11,
                  weight: FontWeight.w400,
                  color: Color(0xffE7BB0C),
                ),
                const Spacer(),
                Image.asset('images/icons/like.png'),
                const SizedBox(
                  width: 5,
                ),
                const ReusableText(
                  title: 'React',
                  size: 11,
                  weight: FontWeight.w400,
                  color: Color(0xff1ABC9C),
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
