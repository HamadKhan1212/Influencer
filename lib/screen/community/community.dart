import 'package:flutter/material.dart';
import 'package:homescreen/constants/changing_screen.dart';
import 'package:homescreen/constants/reusable_text.dart';

import 'community_container_const.dart';
import 'movie_detail.dart';

class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
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
          title: const ReusableText(
            title: 'Colab & Community',
            color: Color(0xff1D1E25),
            size: 21,
            weight: FontWeight.w700,
          ),
        )),
        backgroundColor: const Color(0xffECE9EF),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          "here you will see people who\nwant to colaborate",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3F3F3F)),
                        ),
                        const Spacer(),
                        Container(
                          height: 34,
                          width: 34,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff12C6FF)),
                          child: const Image(
                              image: AssetImage("images/icons/moreIcon2.png")),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        nextScreen(context, const MovieDetail());
                      },
                      child: const CommunityContainerConst(
                        title:
                            'The Last of Us Part II - Release Date\nReveal Trailer | PS4',
                        location: 'Chicago, IL, USA',
                        lastSeen: '3 Hours Ago',
                        followers: '4.3M Followers',
                        accountHolderName: 'Lita Sibestine',
                        accountHolderDetail: 'aspiring influencers',
                        profileImage: 'images/assets/image11.png',
                        buttonColor: Color(0xffF1C40F),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CommunityContainerConst(
                      title:
                          'How To Make Bitcoin Mining Machine |\nMobile mining at Home | Creative Ideas',
                      location: 'Chicago, IL, USA',
                      lastSeen: '5 Hours Ago',
                      followers: '9M Followers',
                      accountHolderName: 'Aron Finch',
                      accountHolderDetail: 'Influencers',
                      profileImage: 'images/assets/image13.png',
                      buttonColor: const Color(0xffF1C40F).withOpacity(0.3),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
