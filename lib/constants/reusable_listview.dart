import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';

class OverViewListView {
  String image;
  String title;
  String subtitle;
  Color color;
  OverViewListView({
    required this.image,
    required this.title,
    required this.color,
    required this.subtitle,
  });
}

class OverViewSubject extends StatelessWidget {
  OverViewSubject({Key? key}) : super(key: key);

  final List<OverViewListView> overView = [
    OverViewListView(
        image: 'images/icons/impression.png',
        title: '24567',
        subtitle: 'Weekly Impressions',
        color: const Color(0xffB1E5FC)),
    OverViewListView(
        image: 'images/icons/counter.png',
        title: '24567',
        subtitle: 'Weekly Impressions',
        color: const Color(0xffCABDFF)),
    OverViewListView(
        image: 'images/icons/rete.png',
        title: '24567',
        subtitle: 'Weekly Impressions',
        color: const Color(0xffFFD88D)),
    OverViewListView(
        image: 'images/icons/view.png',
        title: '24567',
        subtitle: 'Weekly Impressions',
        color: const Color(0xff77DDB8)),
    OverViewListView(
        image: 'images/icons/inquires.png',
        title: '24567',
        subtitle: 'Weekly Impressions',
        color: const Color(0xffC8A2DA)),
    OverViewListView(
        image: 'images/icons/timezone.png',
        title: '24567',
        subtitle: 'Weekly Impressions',
        color: const Color(0xffE98282)),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        height: 138,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: overView.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  height: 138,
                  width: 147,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: overView[index].color),
                          child: Image(
                            image: AssetImage(overView[index].image),
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ReusableText(
                        title: overView[index].title,
                        size: 16,
                        color: Colors.black,
                        weight: FontWeight.w700,
                      ),
                      const SizedBox(
                        height: 05,
                      ),
                      ReusableText(
                        title: overView[index].subtitle,
                        size: 12,
                        weight: FontWeight.w400,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
