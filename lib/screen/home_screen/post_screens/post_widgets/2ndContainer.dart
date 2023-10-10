import 'package:flutter/material.dart';

import '../../../../constants/reusable_text.dart';

class SecondContainer extends StatelessWidget {
  const SecondContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      height: 231,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          border: Border.all(color: Color(0xffE4E4EF), width: 2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextFormField(
            maxLines: 5,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText:
                  'Sed accumsan enim quis ex suscipit, id vulputate sem qu aliquam. Morbi ac ante arcu. Ut blandit odio vitae dictum sodales. Nunc at suscipit risus. Nunc convallis quis quamut imperdiet ',
            ),
          ),
          // ReusableText(
          //   title:
          //       'Sed accumsan enim quis ex suscipit, id vulputate sem qu\naliquam. Morbi ac ante arcu. Ut blandit odio vitae dictum\nsodales. Nunc at suscipit risus. Nunc convallis quis quam\nut imperdiet ',
          //   color: Color(0xff616377),
          //   textAlign: TextAlign.start,
          //   weight: FontWeight.w400,
          // ),
          Spacer(),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.bottomLeft,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF0F0F9)),
                child: Row(
                  children: [
                    ReusableText(
                      title: 'B',
                      weight: FontWeight.bold,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 3),
                      child: Container(
                        width: 2,
                        color: Color(0xffE4E4EF),
                      ),
                    ),
                    ReusableText(
                      title: 'I',
                      weight: FontWeight.bold,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 3),
                      child: Container(
                        width: 2,
                        color: Color(0xffE4E4EF),
                      ),
                    ),
                    Text(
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
                        color: Color(0xffE4E4EF),
                      ),
                    ),
                    Row(
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
                        color: Color(0xffE4E4EF),
                      ),
                    ),
                    Row(
                      children: [
                        Image(image: AssetImage('images/icons/detail.png')),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffD2D2F3)),
                child: Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        size: 20,
                      ),
                      ReusableText(
                        title: '10:30 P.M.',
                        size: 12,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE8E8F6),
                ),
                child: Icon(
                  Icons.emoji_emotions_outlined,
                  size: 20,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE8E8F6),
                ),
                child: ReusableText(
                  title: '@',
                  weight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
