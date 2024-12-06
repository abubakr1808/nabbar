import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          pages[_currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white, // nabbarning orqa rangi
        selectedItemColor: Colors.blue, // oldingi rangi
        unselectedItemColor: Colors.black, // keyingi rangi
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/ant-design_home-filled (1).png",
              color: _currentIndex == 0 ? Colors.blue : Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/ant-design_play-circle-outlined.png",
              color: _currentIndex == 1 ? Colors.blue : Colors.black,
            ),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/ant-design_read-outlined.png",
              color: _currentIndex == 2 ? Colors.blue : Colors.black,
            ),
            label: 'Blogs',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/healthicons_ui-user-profile-outline (3).png",
              color: _currentIndex == 3 ? Colors.blue : Colors.black,
            ),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

List<String> pages = [
  "Welcome Home",
  "Welcome Courses",
  "Welcome Blogs",
  "Welcome Settings",
];
