import 'package:flutter/material.dart';
import 'package:homescreen/constants/changing_screen.dart';
import 'package:homescreen/constants/reusable_text.dart';

import 'create_post.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage('images/assets/retro-microphone.png'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  height: 325.5,
                  width: 345,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Column(
                    children: [
                      const ReusableText(
                        title: 'Choose Your Desire Platform',
                        weight: FontWeight.w700,
                        size: 19,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: 2,
                        color: Color(0xffD9D9D9),
                        indent: 20,
                        endIndent: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                const Image(
                                    image: AssetImage(
                                        'images/icons/facebook.png')),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color(0xff3498DB),
                                          width: 2)),
                                  child: const Icon(
                                    Icons.check,
                                    size: 15,
                                    color: Color(0xff3498DB),
                                  ),
                                )
                              ],
                            ),
                            const Image(
                                image: AssetImage('images/icons/twitter.png')),
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                const Image(
                                    image: AssetImage(
                                        'images/icons/instagram.png')),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color(0xff3498DB),
                                          width: 2)),
                                  child: const Icon(
                                    Icons.check,
                                    size: 15,
                                    color: Color(0xff3498DB),
                                  ),
                                )
                              ],
                            ),
                            const Image(
                                image: AssetImage('images/icons/linkedIn.png')),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffF1C40F),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: const Color(0xffF1C40F),
                                      width: 2)),
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(Icons.add,
                                    size: 42, color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          nextScreen(context, const CreatePost());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color(0xff1C73FF).withOpacity(0.5),
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
                                horizontal: 110, vertical: 20),
                            child: ReusableText(
                              title: 'Apply Now',
                              weight: FontWeight.w400,
                              color: Colors.white,
                              size: 14,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
