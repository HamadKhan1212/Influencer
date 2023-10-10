import 'package:flutter/material.dart';
import 'package:homescreen/constants/changing_screen.dart';

import 'all_tab.dart';

class MessagesAndComment extends StatelessWidget {
  const MessagesAndComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFECE9EF),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            leading: InkWell(
                onTap: () {
                  backScreen(context);
                },
                child: const Icon(Icons.arrow_back_ios)),
            title: const Text(
              "Message & Comment",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          offset: const Offset(1, 1),
                          blurRadius: 5,
                        ),
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 120,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              topLeft: Radius.circular(12),
                            ),
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Engagement Rate / score",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Image.asset(
                                  "images/icons/certificate.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Color(0xFFE1EBFC),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                          ),
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Total Score",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "4.7",
                                  style: TextStyle(
                                    color: Color(0xFF1CAB8E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: TabBar(
                    unselectedLabelColor: const Color(0xFF8E91AD),
                    labelColor: Colors.white,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xFF3498DB),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFF3498DB),
                            offset: Offset(1, 1),
                            blurRadius: 2,
                          ),
                        ]),
                    tabs: const [
                      Tab(
                        text: "All",
                      ),
                      Tab(
                        text: "Message",
                      ),
                      Tab(
                        text: "Comment",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Expanded(
                  child: TabBarView(
                    children: [
                      AllTab(),
                      SizedBox(),
                      SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
