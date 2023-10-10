import 'package:flutter/material.dart';
import 'package:homescreen/constants/changing_screen.dart';
import 'package:homescreen/constants/reusable_text.dart';
import 'package:homescreen/screen/home_screen/post_screens/post_widgets/row1.dart';

import 'calender_list.dart';

class CreatePostUpdated extends StatefulWidget {
  const CreatePostUpdated({Key? key}) : super(key: key);

  @override
  State<CreatePostUpdated> createState() => _CreatePostUpdatedState();
}

class _CreatePostUpdatedState extends State<CreatePostUpdated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffECE9EF),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xffECE9EF),
        elevation: 0,
        title: (const ReusableText(
          title: 'Create Post',
          color: Colors.black,
          size: 21,
          weight: FontWeight.w700,
        )),
        leading: InkWell(
          onTap: () {
            backScreen(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
        child: Column(
          children: [
            const FirstRow(),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              height: 231,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE4E4EF), width: 2)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFormField(
                    maxLines: 5,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText:
                          'Sed accumsan enim quis ex suscipit, id vulputate sem qu aliquam. Morbi ac ante arcu. Ut blandit odio vitae dictum sodales. Nunc at suscipit risus. Nunc convallis quis quamut imperdiet ',
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.bottomLeft,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffF0F0F9)),
                        child: Row(
                          children: [
                            const ReusableText(
                              title: 'B',
                              weight: FontWeight.bold,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              child: Container(
                                width: 2,
                                color: const Color(0xffE4E4EF),
                              ),
                            ),
                            const ReusableText(
                              title: 'I',
                              weight: FontWeight.bold,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              child: Container(
                                width: 2,
                                color: const Color(0xffE4E4EF),
                              ),
                            ),
                            const Text(
                              'U',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 3),
                              child: Container(
                                width: 2,
                                color: const Color(0xffE4E4EF),
                              ),
                            ),
                            const Row(
                              children: [
                                Text(
                                  'A',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 3),
                              child: Container(
                                width: 2,
                                color: const Color(0xffE4E4EF),
                              ),
                            ),
                            const Row(
                              children: [
                                Image(
                                    image:
                                        AssetImage('images/icons/detail.png')),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffE8E8F6),
                        ),
                        child: const Icon(
                          Icons.alarm,
                          size: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffE8E8F6),
                        ),
                        child: const Icon(
                          Icons.emoji_emotions_outlined,
                          size: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffE8E8F6),
                        ),
                        child: const ReusableText(
                          title: '@',
                          weight: FontWeight.w500,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 34,
                  width: 186,
                  decoration: const BoxDecoration(
                      color: Color(0xffDADAE5),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: const ReusableText(
                          title: 'Ai',
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const ReusableText(
                        title: 'Generate ai caption',
                        size: 12,
                        weight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 34,
                  width: 185,
                  decoration: const BoxDecoration(
                      color: Color(0xffDADAE5),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: const ReusableText(
                          title: '#',
                          weight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const ReusableText(
                        title: 'Hash-Tag Generation',
                        size: 12,
                        weight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffE4E4EF)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintStyle: TextStyle(fontSize: 12),
                          hintText: 'app.sa|esway.com/dD4aeYi9902',
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.settings,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffE4E4EF)),
                  child: const Image(
                    image: AssetImage('images/icons/copy.png'),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    padding: const EdgeInsets.all(40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 2,
                          color: const Color(0xffCFCFE2),
                        )),
                    child: const Image(
                      image: AssetImage('images/icons/uploadImages.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topRight,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, right: 8),
                      child: Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                    'images/icons/profileImages.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: const Color(0xffCFCFE2),
                            )),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xff3498DB),
                          border: Border.all(color: Colors.white, width: 3)),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 19,
                      ),
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                nextScreen(context, const CalenderList());
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
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                  child: ReusableText(
                    title: 'Post Now',
                    weight: FontWeight.w700,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
