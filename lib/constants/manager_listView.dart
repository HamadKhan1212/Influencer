import 'package:flutter/material.dart';

class ManagerListViewSubject {
  String image;
  String title;
  String time;
  ManagerListViewSubject({
    required this.image,
    required this.title,
    required this.time,
  });
}

class ManagerListView extends StatelessWidget {
  ManagerListView({Key? key}) : super(key: key);

  final List<ManagerListViewSubject> list = [
    ManagerListViewSubject(
        image: 'images/assets/image1.png',
        title: 'Suspendisse interdum',
        time: '23 Mins Ago'),
    ManagerListViewSubject(
        image: 'images/assets/image7.png',
        title: 'Nulla imperdiet in nunc',
        time: '43 Mins Ago'),
    ManagerListViewSubject(
        image: 'images/assets/image8.png',
        title: 'Fusce felis purus',
        time: '55 Mins Ago'),
    ManagerListViewSubject(
        image: 'images/assets/image9.png',
        title: 'Morbi semper cursus maximus',
        time: '20 Mins Ago'),
    ManagerListViewSubject(
        image: 'images/assets/image10.png',
        title: 'Suspendisse interdum',
        time: '20 Mins Ago'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.64,
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 83,
                        width: 83,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(list[index].image),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[index].title,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Nam lacinia dictum felis, nec lacinia\nNunc eu ipsum mi. ",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff616377)),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time_filled_rounded,
                                color: Color(0xff616377),
                                size: 17,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                list[index].time,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Color(0xff616377)),
                              ),
                              const SizedBox(
                                width: 87,
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: const Color(0xff1C73FF),
                                ),
                                child: const Center(
                                  child: Text(
                                    "More Info",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
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
