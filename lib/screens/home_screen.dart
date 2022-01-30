import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String id = "home screen route";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF4B37BA),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFF4B37BA),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.bar_chart_rounded),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/75843984.jpeg"),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        child: ListView(
          children: [
            const Text(
              "Hi Todd",
              style: TextStyle(
                fontSize: 26.0,
                fontFamily: "Poppins",
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              "6 Tasks are pending",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Poppins",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Container(
                height: 120.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF5451D6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Mobile App Design",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: "Poppins",
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        "Mike and Anita",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Poppins",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: const [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage:
                                      AssetImage("assets/images/75843984.jpeg"),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 24.0),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage("assets/images/75843984.jpeg"),
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Now",
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Poppins",
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Monthly Review",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "Poppins",
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    child: Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
