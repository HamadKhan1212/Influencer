import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';

import '../../constants/bottom_sheet_listView.dart';
import '../../constants/custom_listTile.dart';

class AllTab extends StatefulWidget {
  const AllTab({Key? key}) : super(key: key);

  @override
  State<AllTab> createState() => _AllTabState();
}

class _AllTabState extends State<AllTab> {
  bool youTube = true;
  bool insta = false;
  bool fb = false;
  bool twitter = false;
  bool linkdn = false;
  bool tiktok = false;
  bool visibility1 = false;
  bool visibility2 = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Preview",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  children: [
                    CustomListTile(
                      value: youTube,
                      title: "You Tube",
                      image: "images/icons/yt.png",
                      onTap: (v) {
                        setState(() {
                          youTube = v!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomListTile(
                      value: insta,
                      title: "Instagram",
                      image: "images/icons/instagram.png",
                      onTap: (v) {
                        setState(() {
                          insta = v!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomListTile(
                      value: fb,
                      title: "Facebook",
                      image: "images/icons/facebook.png",
                      onTap: (v) {
                        setState(() {
                          fb = v!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  children: [
                    CustomListTile(
                      value: twitter,
                      title: "Twitter",
                      image: "images/icons/twitter.png",
                      onTap: (v) {
                        setState(() {
                          twitter = v!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomListTile(
                      value: linkdn,
                      title: "Linkden",
                      image: "images/icons/linkedIn.png",
                      onTap: (v) {
                        setState(() {
                          linkdn = v!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomListTile(
                      value: tiktok,
                      title: "TikTok",
                      image: "images/icons/tiktok.png",
                      onTap: (v) {
                        setState(() {
                          tiktok = v!;
                        });
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 40),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                builder: (BuildContext context) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    height: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ReusableText(
                          title: 'Preview message',
                          size: 15,
                          weight: FontWeight.w500,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                  'images/assets/bottomsheetimage1.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              const ReusableText(
                                title: 'BeerBiceps',
                                size: 16,
                                weight: FontWeight.w700,
                              ),
                              const Spacer(),
                              Image.asset('images/icons/yt.png'),
                              const SizedBox(
                                width: 05,
                              ),
                              const ReusableText(
                                title: 'Youtube',
                                size: 13,
                                weight: FontWeight.w500,
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xffE4E4EF),
                        ),
                        BottomSheetPreviewAllListView(),
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFF3498DB),
                  ),
                  color: const Color(0xFFEDF4FF),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x703498DB),
                      blurRadius: 10,
                    ),
                  ]),
              child: const Text(
                "Preview All",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                builder: (BuildContext context) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    height: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ReusableText(
                          title: 'Preview message',
                          size: 15,
                          weight: FontWeight.w500,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                  'images/assets/bottomsheetimage1.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              const ReusableText(
                                title: 'BeerBiceps',
                                size: 16,
                                weight: FontWeight.w700,
                              ),
                              const Spacer(),
                              Image.asset('images/icons/yt.png'),
                              const SizedBox(
                                width: 05,
                              ),
                              const ReusableText(
                                title: 'Youtube',
                                size: 13,
                                weight: FontWeight.w500,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(
                                height: 30, width: 310, child: TextField()),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                    ),
                                    color: Color(0xff74AA9C)),
                                child: const Image(
                                  image: AssetImage('images/icons/chatGpt.png'),
                                )),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                  ),
                                  color: Colors.white),
                              child: const Icon(
                                Icons.close,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const ReusableText(
                          color: Color(0xff8E91AD),
                          size: 13,
                          weight: FontWeight.w500,
                          title:
                              'Ut blandit odio vitae dictum sodales. Nunc\nat suscipit risus. Nunc convallis quis imper\ndietante arcu ',
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                height: 26,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x703498DB),
                                      blurRadius: 15,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xff1C73FF),
                                ),
                                child: const ReusableText(
                                  title: 'Respond',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                height: 26,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x703498DB)
                                          .withOpacity(0.2),
                                      blurRadius: 15,
                                    ),
                                  ],
                                  border: Border.all(
                                      color: const Color(0xff1C73FF)),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.transparent,
                                ),
                                child: const ReusableText(
                                    title: 'Skip', color: Colors.black),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF3498DB),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x703498DB),
                      blurRadius: 10,
                    ),
                  ]),
              child: const Text(
                "Preview Message",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                builder: (BuildContext context) {
                  return Container(
                    height: 600,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ReusableText(
                          title: 'Preview message',
                          size: 15,
                          weight: FontWeight.w500,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                  'images/assets/bottomsheetimage1.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              const ReusableText(
                                title: 'BeerBiceps',
                                size: 16,
                                weight: FontWeight.w700,
                              ),
                              const Spacer(),
                              Image.asset('images/icons/yt.png'),
                              const SizedBox(
                                width: 05,
                              ),
                              const ReusableText(
                                title: 'Youtube',
                                size: 13,
                                weight: FontWeight.w500,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(
                                height: 30, width: 310, child: TextField()),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                    ),
                                    color: Color(0xff74AA9C)),
                                child: const Image(
                                  image: AssetImage('images/icons/chatGpt.png'),
                                )),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(5),
                                  ),
                                  color: Colors.white),
                              child: const Icon(
                                Icons.close,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const ReusableText(
                          color: Color(0xff8E91AD),
                          size: 13,
                          weight: FontWeight.w500,
                          title:
                              'Ut blandit odio vitae dictum sodales. Nunc\nat suscipit risus. Nunc convallis quis imper\ndietante arcu ',
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const ReusableText(
                              title: 'General (3)',
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    visibility1 = !visibility1;
                                  });
                                },
                                child: visibility1
                                    ? const Icon(
                                        Icons.keyboard_arrow_up,
                                        size: 30,
                                      )
                                    : const Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 30,
                                      )),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Visibility(
                            visible: visibility1,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10),
                                    alignment: Alignment.topLeft,
                                    height: 39,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey.withOpacity(0.1),
                                        border: Border.all(
                                            color:
                                                Colors.grey.withOpacity(0.3))),
                                    child: const ReusableText(
                                      title: '# Design',
                                      size: 13,
                                      weight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10),
                                    alignment: Alignment.topLeft,
                                    height: 39,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey.withOpacity(0.1),
                                        border: Border.all(
                                            color:
                                                Colors.grey.withOpacity(0.3))),
                                    child: const ReusableText(
                                      title: '# business team',
                                      size: 13,
                                      weight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10),
                                    alignment: Alignment.topLeft,
                                    height: 39,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey.withOpacity(0.1),
                                        border: Border.all(
                                            color:
                                                Colors.grey.withOpacity(0.3))),
                                    child: const ReusableText(
                                      title: '# analytics',
                                      size: 13,
                                      weight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const ReusableText(
                              title: 'grabstar (3)',
                              size: 16,
                              weight: FontWeight.w500,
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    visibility2 = !visibility2;
                                  });
                                },
                                child: visibility2
                                    ? const Icon(
                                        Icons.keyboard_arrow_up,
                                        size: 30,
                                      )
                                    : const Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 30,
                                      )),
                          ],
                        ),
                        Visibility(
                            visible: visibility2,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10),
                                    alignment: Alignment.topLeft,
                                    height: 39,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey.withOpacity(0.1),
                                        border: Border.all(
                                            color:
                                                Colors.grey.withOpacity(0.3))),
                                    child: const ReusableText(
                                      title: '# Design',
                                      size: 13,
                                      weight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10),
                                    alignment: Alignment.topLeft,
                                    height: 39,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey.withOpacity(0.1),
                                        border: Border.all(
                                            color:
                                                Colors.grey.withOpacity(0.3))),
                                    child: const ReusableText(
                                      title: '# business team',
                                      size: 13,
                                      weight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10),
                                    alignment: Alignment.topLeft,
                                    height: 39,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey.withOpacity(0.1),
                                        border: Border.all(
                                            color:
                                                Colors.grey.withOpacity(0.3))),
                                    child: const ReusableText(
                                      title: '# analytics',
                                      size: 13,
                                      weight: FontWeight.w500,
                                    ),
                                  ),
                                )
                              ],
                            )),
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                height: 26,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x703498DB),
                                      blurRadius: 15,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xff1C73FF),
                                ),
                                child: const ReusableText(
                                  title: 'Respond',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                height: 26,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x703498DB)
                                          .withOpacity(0.2),
                                      blurRadius: 15,
                                    ),
                                  ],
                                  border: Border.all(
                                      color: const Color(0xff1C73FF)),
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.transparent,
                                ),
                                child: const ReusableText(
                                    title: 'Skip', color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFF3498DB),
                  ),
                  color: const Color(0xFFEDF4FF),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x703498DB),
                      blurRadius: 10,
                    ),
                  ]),
              child: const Text(
                "Preview Comment",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
