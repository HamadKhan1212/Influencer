import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';

class MainListView {
  String image;
  String title;
  MainListView({
    required this.image,
    required this.title,
  });
}

class MainListSubject extends StatelessWidget {
  MainListSubject({Key? key}) : super(key: key);

  final List<MainListView> list = [
    MainListView(
      image: 'images/icons/certificates.png',
      title: 'Certificates',
    ),
    MainListView(
      image: 'images/icons/leaderboards.png',
      title: 'Leaderboards',
    ),
    MainListView(
      image: 'images/icons/points.png',
      title: 'Points',
    ),
    MainListView(
      image: 'images/icons/addmore.png',
      title: 'Add More',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        height: 90,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: 103,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(list[index].image),
                      const SizedBox(
                        height: 15,
                      ),
                      ReusableText(
                        title: list[index].title,
                        size: 12,
                        color: Colors.black,
                        weight: FontWeight.w400,
                      ),
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
