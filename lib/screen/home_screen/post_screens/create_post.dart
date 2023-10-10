import 'package:flutter/material.dart';
import 'package:homescreen/constants/changing_screen.dart';
import 'package:homescreen/constants/reusable_text.dart';
import 'package:homescreen/screen/home_screen/post_screens/post_widgets/2ndContainer.dart';
import 'package:homescreen/screen/home_screen/post_screens/post_widgets/row1.dart';

import 'create_post_update.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
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
            const SecondContainer(),
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
                nextScreen(context, const CreatePostUpdated());
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
                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 20),
                  child: ReusableText(
                    title: 'Scheduling The Post',
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
