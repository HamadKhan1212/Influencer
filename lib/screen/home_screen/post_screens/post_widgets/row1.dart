import 'package:flutter/material.dart';

import '../../../../constants/reusable_text.dart';

enum SampleItem { Story, Status }

class FirstRow extends StatefulWidget {
  const FirstRow({Key? key}) : super(key: key);

  @override
  State<FirstRow> createState() => _FirstRowState();
}

class _FirstRowState extends State<FirstRow> {
  SampleItem? selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
              ),
              color: Color(0xffE4E4EF)),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: ReusableText(
              title: 'Initial Content',
              size: 11,
              weight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          color: const Color(0xff3498DB),
          child: const Image(
            image: AssetImage('images/icons/facebookIcon.png'),
            height: 30,
            width: 30,
          ),
        ),
        Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                ),
                color: Color(0xffE4E4EF)),
            child: const Image(
              image: AssetImage('images/icons/instagramIcon.png'),
              height: 30,
              width: 30,
            )),
        const Spacer(),
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
              color: Color(0xffE4E4EF)),
          child: PopupMenuButton<SampleItem>(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            constraints: const BoxConstraints.expand(width: 100, height: 100),
            initialValue: selectedMenu,
            icon: Image.asset('images/icons/moreIcon.png'),
            // Callback that sets the selected popup menu item.
            onSelected: (SampleItem item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
              const PopupMenuItem<SampleItem>(
                padding: EdgeInsets.zero,
                value: SampleItem.Story,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8, top: 10),
                      child: Row(
                        children: [
                          Image(image: AssetImage('images/icons/story.png')),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Story',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 1,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              const PopupMenuItem<SampleItem>(
                padding: EdgeInsets.zero,
                value: SampleItem.Status,
                child: Padding(
                  padding: EdgeInsets.only(left: 8, bottom: 10),
                  child: Row(
                    children: [
                      Image(image: AssetImage('images/icons/add.png')),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Status',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
