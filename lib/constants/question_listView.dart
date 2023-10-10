import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';

class QuestionListViewSubject {
  String question1;
  bool question1Value;
  String question2;
  bool question2Value;
  String mainTitle;
  QuestionListViewSubject({
    required this.mainTitle,
    required this.question1,
    required this.question1Value,
    required this.question2,
    required this.question2Value,
  });
}

class QuestionListView extends StatefulWidget {
  QuestionListView({Key? key}) : super(key: key);

  @override
  State<QuestionListView> createState() => _QuestionListViewState();
}

class _QuestionListViewState extends State<QuestionListView> {
  final List<QuestionListViewSubject> list = [
    QuestionListViewSubject(
        mainTitle: 'Cursing bool',
        question1Value: true,
        question2Value: true,
        question1: 'Phasellus Sollicitudin Fringilla Dui Vitae Sagittis?',
        question2:
            'Quisque Lectus Elit, Convallis\nIn Viverra In, Interdum Et Quam?'),
    QuestionListViewSubject(
        mainTitle: 'Adult material earnings bool',
        question1Value: true,
        question2Value: true,
        question1: 'Donec Sodales Metus In Tincidunt Laoreet?',
        question2:
            'Etiam Sodales Turpis Id Odio Laoreet, In\nPosuere Nibh Faucibus?'),
    QuestionListViewSubject(
        mainTitle: 'Family freidnly bool',
        question1Value: true,
        question2Value: true,
        question1: 'Donec Suscipit Dapibus Turpis In Tincidunt?',
        question2: 'Maecenas Porta Tempus Est?'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.64,
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, index) {
              return InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: ReusableText(
                              title: list[index].mainTitle,
                              size: 14,
                              weight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffD5D1DA)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ReusableText(
                                  title: list[index].question1,
                                  color: const Color(0xff575971),
                                  size: 14,
                                  weight: FontWeight.w400,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                      value: list[index].question1Value,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          value:
                                          list[index].question1Value =
                                              value ?? false;
                                        });
                                      },
                                    ),
                                    const ReusableText(
                                      title: 'True',
                                      size: 14,
                                      weight: FontWeight.w400,
                                    ),
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                      value: !list[index].question1Value,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          value:
                                          list[index].question1Value =
                                              !(value ?? false);
                                        });
                                      },
                                    ),
                                    const ReusableText(
                                      title: 'False',
                                      size: 14,
                                      weight: FontWeight.w400,
                                    )
                                  ],
                                ),
                                const Divider(
                                  thickness: 1,
                                ),
                                ReusableText(
                                  title: list[index].question2,
                                  color: const Color(0xff575971),
                                  size: 14,
                                  weight: FontWeight.w400,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                      value: list[index].question2Value,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          value:
                                          list[index].question2Value =
                                              value ?? false;
                                        });
                                      },
                                    ),
                                    const ReusableText(
                                      title: 'True',
                                      size: 14,
                                      weight: FontWeight.w400,
                                    ),
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Checkbox(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(3)),
                                      value: !list[index].question2Value,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          value:
                                          list[index].question2Value =
                                              !(value ?? false);
                                        });
                                      },
                                    ),
                                    const ReusableText(
                                      title: 'False',
                                      size: 14,
                                      weight: FontWeight.w400,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
