import 'package:flutter/material.dart';
import 'package:homescreen/constants/reusable_text.dart';

import 'screen/ai_driven/ai_driven.dart';
import 'screen/community/community.dart';
import 'screen/home_screen/home_screen_navigation.dart';
import 'screen/manager/manager.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const AiDriven(),
    const Manager(),
    const Community(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE9EF),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 70,
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: SizedBox(
                  height: 50,
                  width: 60,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/icons/home.png',
                        color: _currentIndex == 0 ? Colors.black : Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ReusableText(
                        title: 'Home',
                        size: 12,
                        weight: FontWeight.w500,
                        color: _currentIndex == 0 ? Colors.black : Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                child: SizedBox(
                  height: 50,
                  width: 60,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/icons/aiDriven.png',
                        color: _currentIndex == 1 ? Colors.black : Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ReusableText(
                        title: 'Ai Driven',
                        weight: FontWeight.w500,
                        size: 12,
                        color: _currentIndex == 1 ? Colors.black : Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                child: SizedBox(
                  height: 50,
                  width: 60,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/icons/manager.png',
                        color: _currentIndex == 2 ? Colors.black : Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ReusableText(
                        title: 'Manager',
                        weight: FontWeight.w500,
                        size: 12,
                        color: _currentIndex == 2 ? Colors.black : Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                },
                child: SizedBox(
                  height: 50,
                  width: 70,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/icons/community.png',
                        color: _currentIndex == 3 ? Colors.black : Colors.grey,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      ReusableText(
                        weight: FontWeight.w500,
                        title: 'Community',
                        size: 12,
                        color: _currentIndex == 3 ? Colors.black : Colors.grey,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 70,
        height: 70,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: Image.asset(
          'images/icons/main_button.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
