import 'package:flutter/material.dart';
import 'package:task_manager/model/operation_screens_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String id = "home screen route";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomNavBarIndex = 0;
  void newIndex(int index) {
    setState(() {
      bottomNavBarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBackgroundColor[bottomNavBarIndex],
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor: const Color(0xFF4B37BA),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: bottomNavBarIndex,
            onTap: newIndex,
            selectedItemColor: Colors.lightBlueAccent,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.task_rounded), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_outlined), label: ""),
            ],
          ),
        ),
        appBar: appBars.elementAt(bottomNavBarIndex),
        body: screenData[bottomNavBarIndex]);
  }
}
