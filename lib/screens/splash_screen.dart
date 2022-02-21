import 'package:flutter/material.dart';
import 'package:task_manager/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String id = "splash screen route";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBE9F6),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: MediaQuery.of(context).size.longestSide * 0.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Manage your daily tasks",
                style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0, right: 20.0),
              child: Text(
                "Team and project management with solution providing App",
                style: TextStyle(fontSize: 18, fontFamily: "Poppins"),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
              child: Stack(
                alignment: AlignmentDirectional.centerStart,
                children: const [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      "Get Started",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
