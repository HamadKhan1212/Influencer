import 'package:flutter/material.dart';
import 'package:homescreen/constants/changing_screen.dart';
import 'package:homescreen/constants/reusable_text.dart';

class PostDetails extends StatefulWidget {
  const PostDetails({Key? key}) : super(key: key);

  @override
  State<PostDetails> createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  backScreen(context);
                },
                child: Image.asset(
                  'images/assets/image1.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(child: Container())
            ],
          ),
          Container(
            height: 530,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xffECE9EF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                const SizedBox(
                  height: 270,
                ),
                const ReusableText(
                  title: 'Nullam Sed Mollis Ex. Quisque\nsed Lobortis Ipsum.',
                  size: 19,
                  weight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset('images/icons/clock.png'),
                    const ReusableText(
                      title: '23 Mins Ago',
                      color: Color(0xffE7BB0C),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.visibility,
                      size: 20,
                      color: Color(0xffE7BB0C),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const ReusableText(
                      title: '233 Views',
                      color: Color(0xffE7BB0C),
                    ),
                    const Spacer(),
                    const ReusableText(
                      title: 'Platform:',
                      size: 14,
                      weight: FontWeight.w400,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(
                      'images/icons/facebook.png',
                      height: 20,
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    ReusableText(
                      title: '#Morbi ac',
                      size: 14,
                      weight: FontWeight.w400,
                      color: Color(0xff575971),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ReusableText(
                      title: '#Nulla vitae',
                      size: 14,
                      weight: FontWeight.w400,
                      color: Color(0xff575971),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ReusableText(
                      title: '#Pellentesque',
                      size: 14,
                      weight: FontWeight.w400,
                      color: Color(0xff575971),
                    ),
                    SizedBox(
                      width: 15,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    ReusableText(
                      title: '#Vivamus varius',
                      size: 14,
                      weight: FontWeight.w400,
                      color: Color(0xff575971),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    height: 265,
                    width: 345,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      children: [
                        const ReusableText(
                          title:
                              'Pellentesque tristique, augue eget rutrum\nscelerisque, sapien elit dictum urna, sit amet\npulvinar lacus justo eu massa. Vivamus varius\ncondimentum ullamcorper.',
                          color: Color(0xff616377),
                          size: 14,
                          weight: FontWeight.w500,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                height: 13,
                                width: 13,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 3,
                                        color: const Color(0xff1ABC9C))),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const ReusableText(
                                title: 'Nunc condimentu dum ultricies.',
                                size: 14,
                                weight: FontWeight.w500,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                height: 13,
                                width: 13,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 3,
                                        color: const Color(0xff1ABC9C))),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const ReusableText(
                                title: 'Maecenas ut pretium ne que.',
                                size: 14,
                                weight: FontWeight.w500,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                height: 13,
                                width: 13,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 3,
                                        color: const Color(0xff1ABC9C))),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const ReusableText(
                                title: 'Nam tincidunt sapien luctus.',
                                size: 14,
                                weight: FontWeight.w500,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                height: 13,
                                width: 13,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 3,
                                        color: const Color(0xff1ABC9C))),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const ReusableText(
                                title: 'Sed accumsan enim q suscipit.',
                                size: 14,
                                weight: FontWeight.w500,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Container(
                                height: 13,
                                width: 13,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 3,
                                        color: const Color(0xff1ABC9C))),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const ReusableText(
                                title: 'Morbi ac ante arcu.',
                                size: 14,
                                weight: FontWeight.w500,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
