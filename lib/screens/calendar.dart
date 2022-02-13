import 'package:flutter/material.dart';

class TaskCalendar extends StatefulWidget {
  const TaskCalendar({Key? key}) : super(key: key);
  static const String id = "task calender route";

  @override
  _TaskCalendarState createState() => _TaskCalendarState();
}

class _TaskCalendarState extends State<TaskCalendar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [Icon(Icons.arrow_back), Text("Sep")],
              ),
              const Text(
                "October",
                style: TextStyle(
                    fontFamily: "Poppins", fontSize: 26, fontWeight: FontWeight.w700),
              ),
              Row(
                children: const [
                  Text("Nov"),
                  Icon(Icons.arrow_forward_rounded),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 65,
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      color: const Color(0xFF5451D6),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "12",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Wed",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 65,
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("13"),
                        Text("Thu"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 65,
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("14"),
                        Text("Fri"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 65,
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("15"),
                        Text("Sat"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "Ongoing",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          )
        ],
      ),
    );
  }
}
